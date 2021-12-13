import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:open_location_picker/open_location_picker.dart';

class MapAppBar extends StatefulWidget with PreferredSizeWidget {
  final OpenMapBloc bloc;
  final MapController controller;
  final ValueChanged<SelectedLocation>? onDone;
  final String srearchHint;
  final SearchFilters? searchFilters;
  final Function(LatLng latLng, double zoom) moveTo;

  const MapAppBar({
    Key? key,
    required this.bloc,
    required this.controller,
    required this.moveTo,
    required this.onDone,
    required this.srearchHint,
    required this.searchFilters,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  State<MapAppBar> createState() => _MapAppBarState();
}

class _MapAppBarState extends State<MapAppBar> {
  late FocusNode _focusNode;
  Timer? timer;
  void search(String? q, OpenMapState state) async {
    timer?.cancel();
    if (q == null || q.isEmpty) {
      widget.bloc.emit(OpenMapState.selected(state.selected));
      return;
    }
    var _q = q;

    timer = Timer(const Duration(milliseconds: 700), () async {
      var oldResults = state.maybeWhen(
        orElse: () => <FormattedLocation>[],
        searching: (_, __, values) => values,
        results: (_, __, values) => values,
      );

      try {
        widget.bloc.emit(OpenMapState.searching(
          selected: state.selected,
          query: _q,
          oldResults: oldResults,
        ));
        Locale locale = Localizations.localeOf(context);
        var url = Uri.parse("https://nominatim.openstreetmap.org/search");
        url = url.replace(
          queryParameters: {
            "q": _q,
            "format": "jsonv2",
            "namedetails": "1",
            "accept-language": locale.languageCode,
            "addressdetails": "1",
            "polygon_geojson": "1",
            "extratags": "1",
            "polygon_threshold": "1",
            if (widget.searchFilters != null)
              ...(widget.searchFilters!.toJson())
          },
        );
        var response = await http.get(url);
        var parsed = jsonDecode(response.body) as List;

        List<FormattedLocation> results = parsed.map((loc) {
          return FormattedLocation.from(loc);
        }).toList();
        widget.bloc.emit(OpenMapState.results(
          selected: state.selected,
          query: _q,
          searchResults: results,
        ));
      } catch (e) {
        if (mounted) {
          OpenMapSettings.of(context)?.onError?.call(context, e);
        }
        widget.bloc.emit(state);
      }
    });
  }

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    _focusNode.dispose();
    super.dispose();
  }

  void zoomIn() {
    widget.moveTo(widget.controller.center, widget.controller.zoom + 1);
  }

  void zoomOut() {
    widget.moveTo(widget.controller.center, widget.controller.zoom - 1);
  }

  Widget _doneButton(SelectedLocation location) {
    return location.when(
      multi: (List<FormattedLocation> selected) {
        return IconButton(
          icon: const Icon(Icons.done),
          onPressed: selected.isNotEmpty
              ? () {
                  widget.onDone?.call(location);
                }
              : null,
        );
      },
      single: (FormattedLocation? selected) {
        return IconButton(
          icon: const Icon(Icons.done),
          onPressed: selected != null
              ? () {
                  widget.onDone?.call(location);
                }
              : null,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.bloc.stream,
      initialData: widget.bloc.state,
      builder: (BuildContext context, AsyncSnapshot<OpenMapState> snapshot) {
        var state = snapshot.data!;

        return AppBar(
          leading: state.mapOrNull(
            searching: (_) => const Center(child: CupertinoActivityIndicator()),
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
          titleTextStyle: Theme.of(context).textTheme.bodyText1,
          iconTheme: Theme.of(context).iconTheme,
          elevation: state.maybeMap(
            orElse: () => 4,
            searching: (_) => 0,
            results: (_) => 0,
          ),
          actions: [
            StreamBuilder(
                stream: widget.controller.mapEventStream,
                builder: (context, snapshot) {
                  return IconButton(
                    onPressed: (widget.controller.zoom < 18) ? zoomIn : null,
                    icon: const Icon(Icons.zoom_in_rounded),
                  );
                }),
            StreamBuilder(
                stream: widget.controller.mapEventStream,
                builder: (context, snapshot) {
                  return IconButton(
                    onPressed: (widget.controller.zoom > 1) ? zoomOut : null,
                    icon: const Icon(Icons.zoom_out_rounded),
                  );
                }),
            state.when(
              selected: _doneButton,
              reversing: (value, _) => _doneButton(value),
              searching: (value, _, __) => _doneButton(value),
              results: (value, _, __) => _doneButton(value),
            ),
          ],
          title: TextFormField(
            focusNode: _focusNode,
            onChanged: (v) => search(v, state),
            initialValue: state.whenOrNull(
              searching: (_, q, __) => q,
              results: (_, q, __) => q,
            ),
            decoration: InputDecoration(
              hintText: widget.srearchHint,
              contentPadding: EdgeInsets.zero,
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              fillColor: Colors.transparent,
            ),
          ),
        );
      },
    );
  }
}
