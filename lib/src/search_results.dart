import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import './location_model.dart';
import 'bloc.dart';

class SearchResults extends StatelessWidget {
  final OpenMapBloc bloc;
  final ValueChanged<LatLngBounds> fitBounds;
  const SearchResults({Key? key, required this.bloc, required this.fitBounds})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.stream,
      initialData: bloc.state,
      builder: (BuildContext context, AsyncSnapshot<OpenMapState> snapshoot) {
        if (!snapshoot.hasData) return const SizedBox();
        var type = snapshoot.data!;
        return type.maybeMap(
          orElse: () => _buildBody(context, [], type),
          searching: (search) => _buildBody(context, search.oldResults, search),
          results: (results) =>
              _buildBody(context, results.searchResults, results),
        );
      },
    );
  }

  ConstrainedBox _buildBody(BuildContext context,
      List<FormattedLocation> results, OpenMapState state) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height / 2),
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        alignment: Alignment.topCenter,
        child: results.isEmpty ? const SizedBox() : _buildList(results, state),
      ),
    );
  }

  Widget _buildList(List<FormattedLocation> results, OpenMapState state) {
    return Material(
      elevation: 4,
      child: ListView.separated(
        itemCount: results.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          var loc = results[index];
          return ListTile(
            dense: true,
            onTap: () {
              state.selected.when(
                single: (_) {
                  bloc.emit(
                      OpenMapState.selected(SelectedLocation.single(loc)));
                },
                multi: (old) {
                  var exists = old
                      .any((element) => element.identifier == loc.identifier);
                  var _new = exists
                      ? old
                          .map((e) => e.identifier == loc.identifier ? loc : e)
                          .toList()
                      : [loc, ...old];
                  bloc.emit(
                      OpenMapState.selected(SelectedLocation.multi(_new)));
                },
              );
              fitBounds(loc.boundingbox);
            },
            title: Text(loc.toString()),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
