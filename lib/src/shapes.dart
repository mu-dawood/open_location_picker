import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import './location_model.dart';
import 'bloc.dart';

export 'package:latlong2/latlong.dart';

/// List of Polygon of selected locations
class MapPolygens extends StatelessWidget {
  final OpenMapBloc bloc;
  const MapPolygens({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MapShapes(
      bloc: bloc,
      builder: (GeoGeometryGroup group, LatLng? loadingPoint) {
        List<Polygon> list = group.polygons.map((loc) {
          var color = loc.color(context);
          return Polygon(
            points: loc.points,
            color: color.withOpacity(0.3),
            borderColor: color,
            borderStrokeWidth: 2,
          );
        }).toList();
        return PolygonLayerWidget(
          options: PolygonLayerOptions(
            polygons: list,
          ),
        );
      },
    );
  }
}

/// List of Polylines of selected locations

class MapPolylines extends StatelessWidget {
  final OpenMapBloc bloc;
  const MapPolylines({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MapShapes(
      bloc: bloc,
      builder: (GeoGeometryGroup group, LatLng? loadingPoint) {
        return PolylineLayerWidget(
          options: PolylineLayerOptions(
            polylines: [
              for (var loc in group.lines)
                Polyline(
                  points: loc.points,
                  color: loc.color(context),
                  strokeWidth: 5,
                  isDotted: true,
                ),
            ],
          ),
        );
      },
    );
  }
}

/// List of Circles of selected locations

class MapCircles extends StatelessWidget {
  final OpenMapBloc bloc;
  const MapCircles({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _MapShapes(
      bloc: bloc,
      builder: (GeoGeometryGroup group, LatLng? loadingPoint) {
        List<CircleMarker> list = group.points.map((loc) {
          var color = loc.color(context);
          return CircleMarker(
            point: loc.point,
            color: color.withOpacity(0.3),
            borderColor: color,
            borderStrokeWidth: 2,
            radius: 50,
          );
        }).toList();
        return CircleLayerWidget(
          options: CircleLayerOptions(circles: list),
        );
      },
    );
  }
}

/// Grouping locations into one object

class GeoGeometryGroup {
  final List<GeoPolygon> polygons;
  final List<GeoLinestring> lines;
  final List<GeoPoint> points;
  GeoGeometryGroup({
    required this.polygons,
    required this.lines,
    required this.points,
  });
}

class _MapShapes extends StatelessWidget {
  final OpenMapBloc bloc;
  final Widget Function(GeoGeometryGroup group, LatLng? loadingPoint) builder;
  const _MapShapes({Key? key, required this.bloc, required this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.stream,
      initialData: bloc.state,
      builder: (BuildContext context, AsyncSnapshot<OpenMapState> snapshoot) {
        var currentState = snapshoot.data;
        if (currentState == null) {
          return _markers([], null);
        } else {
          var loading = currentState.whenOrNull(reversing: (_, r) => r);
          return currentState.selected.when(
            single: (value) => _markers(value == null ? [] : [value], loading),
            multi: (values) => _markers(values, loading),
          );
        }
      },
    );
  }

  Widget _markers(List<FormattedLocation> locations, LatLng? loadingPoint) {
    var group = GeoGeometryGroup(
      lines: List.empty(growable: true),
      polygons: List.empty(growable: true),
      points: List.empty(growable: true),
    );
    for (var loc in locations) {
      loc.geojson.mapOrNull(
        polygon: (state) {
          group.polygons.add(state);
        },
        linestring: (state) {
          group.lines.add(state);
        },
        point: (state) {
          group.points.add(state);
        },
      );
    }

    return builder(group, loadingPoint);
  }
}
