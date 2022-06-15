import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import './location_model.dart';
import './map_view_settings.dart';
import 'bloc.dart';

/// current location display
class MyCurrentLocationMarker extends StatefulWidget {
  const MyCurrentLocationMarker({Key? key}) : super(key: key);

  @override
  State<MyCurrentLocationMarker> createState() =>
      _MyCurrentLocationMarkerState();
}

class _MyCurrentLocationMarkerState extends State<MyCurrentLocationMarker> {
  LatLng? _currentLocation;
  StreamSubscription<LatLng>? _listener;
  @override
  void didChangeDependencies() {
    var settings = OpenMapSettings.of(context);
    if (settings?.getCurrentLocation != null) {
      settings!.getCurrentLocation!().then((value) {
        if (mounted) {
          setState(() {
            _currentLocation = value;
          });
        }
      });
    }
    if (settings?.getLocationStream != null) {
      _listener = settings!.getLocationStream!().listen((event) {
        if (_currentLocation?.latitude == event.latitude &&
            _currentLocation?.longitude == event.longitude) {
          return;
        }
        if (mounted) {
          setState(() {
            _currentLocation = event;
          });
        }
      });
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _listener?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var settings = OpenMapSettings.of(context);
    var currentMarker = settings?.currentLocationMarker;
    return MarkerLayerWidget(
      options: MarkerLayerOptions(
        markers: [
          if (_currentLocation != null)
            currentMarker?.call(context, _currentLocation!) ??
                Marker(
                  point: _currentLocation!,
                  builder: (ctx) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.5),
                          blurRadius: 5,
                        )
                      ],
                    ),
                    child: Icon(
                      Icons.radio_button_unchecked_rounded,
                      size: 15,
                      color: Theme.of(context).primaryColor.withOpacity(0.7),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

// list of selected markers
class MapMarkers extends StatelessWidget {
  final OpenMapBloc bloc;
  const MapMarkers({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.stream,
      initialData: bloc.state,
      builder: (BuildContext context, AsyncSnapshot<OpenMapState> snapshoot) {
        var currentState = snapshoot.data;
        if (currentState == null) {
          return _markers(context, [], null);
        } else {
          var loading = currentState.whenOrNull(reversing: (_, r) => r);
          return currentState.selected.when(
            single: (value) =>
                _markers(context, value == null ? [] : [value], loading),
            multi: (values) => _markers(context, values, loading),
          );
        }
      },
    );
  }

  Widget _markers(BuildContext context, List<FormattedLocation> locations,
      LatLng? loadingPoint) {
    var settings = OpenMapSettings.of(context);
    var marker = settings?.locationMarker;
    return MarkerLayerWidget(
      options: MarkerLayerOptions(
        markers: [
          if (loadingPoint != null)
            Marker(
              point: loadingPoint,
              anchorPos: AnchorPos.align(AnchorAlign.top),
              builder: (ctx) => const CircularProgressIndicator(),
            ),
          for (var loc in locations)
            marker?.call(context, loc) ??
                Marker(
                  point: loc.toLatLng(),
                  width: 40,
                  height: 40,
                  anchorPos: AnchorPos.align(AnchorAlign.top),
                  builder: (ctx) => Transform.translate(
                    offset: const Offset(0, 5),
                    child: Icon(
                      Icons.fmd_good,
                      size: 40,
                      color: loc.geojson.color(context),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
