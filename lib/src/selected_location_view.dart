import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'bloc.dart';
import 'location_model.dart';

/// Display selected locations on Bottom navigation bar

class SelectedLocationView extends StatelessWidget {
  final OpenMapBloc bloc;
  final ValueChanged<LatLngBounds> fitBounds;
  final ValueChanged<LatLng> moveTo;

  const SelectedLocationView({
    Key? key,
    required this.bloc,
    required this.fitBounds,
    required this.moveTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        alignment: Alignment.topCenter,
        child: StreamBuilder(
          stream: bloc.stream,
          initialData: bloc.state,
          builder:
              (BuildContext context, AsyncSnapshot<OpenMapState> snapshot) {
            var selected = snapshot.data!.selected;
            return selected.when(
              multi: (List<FormattedLocation> values) {
                return ConstrainedBox(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height / 3),
                  child: Scrollbar(
                    child: ListView(
                      shrinkWrap: true,
                      children: ListTile.divideTiles(
                        tiles:
                            values.map((e) => _buildTile(context, e, selected)),
                        context: context,
                      ).toList(),
                    ),
                  ),
                );
              },
              single: (FormattedLocation? value) {
                if (value == null) return const SizedBox();
                return _buildTile(context, value, selected);
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildTile(
      BuildContext context, FormattedLocation e, SelectedLocation state) {
    return ListTile(
      title: Text(e.toString()),
      leading: Icon(
        e.geojson.map(
          point: (_) => Icons.pin_drop_rounded,
          // cSpell: disable-next-line
          linestring: (_) => Icons.navigation_rounded,
          polygon: (_) => Icons.place_rounded,
          multiPolygon: (_) => Icons.place_outlined,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          state.when(
            single: (sub) {
              bloc.emit(
                  const OpenMapState.selected(SelectedLocation.single(null)));
            },
            multi: (list) {
              bloc.emit(OpenMapState.selected(SelectedLocation.multi(
                  list.where((element) => element != e).toList())));
            },
          );
        },
        color: Theme.of(context).errorColor,
      ),
      onTap: () {
        if (e.boundingBox != null) {
          fitBounds(e.boundingBox!);
        } else {
          moveTo(LatLng(e.lat, e.lon));
        }
      },
    );
  }
}
