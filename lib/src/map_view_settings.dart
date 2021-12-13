import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import './location_model.dart';
import 'map_view.dart';
import 'options.dart';
import 'reverse_options.dart';

typedef GetCurrentLocationCallBack = Future<LatLng?> Function();
typedef GetLocationStreamCallBack = Stream<LatLng> Function();
typedef LocationMarkerCallback = Marker Function(BuildContext context, FormattedLocation location);
typedef CurrentLocationMarkerCallback = Marker Function(BuildContext context, LatLng location);

/// global settings for map
/// You can wrap material app with it or wrap entire screen to ovveride the globals
class OpenMapSettings extends InheritedWidget {
  const OpenMapSettings({
    Key? key,
    required Widget child,
    this.getCurrentLocation,
    this.defaultOptions,
    this.getLocationStream,
    this.onError,
    this.locationMarker,
    this.currentLocationMarker,
    this.srearchHint,
    this.myLocationButton,
    this.searchFilters,
    this.reverseZoom,
    this.defaultTileProvider = const NonCachingNetworkTileProvider(),
  }) : super(key: key, child: child);

  /// Limiting search results to
  final SearchFilters? searchFilters;

  /// hint to display in search box
  final String Function(BuildContext context)? srearchHint;

  /// global error handler
  final void Function(BuildContext context, dynamic error)? onError;

  /// we dont need to depend in any package except maps
  /// so we let you choose how you get user current location
  /// you can use location or geolocator or any thing else
  final GetCurrentLocationCallBack? getCurrentLocation;

  /// call back to build custom marker
  final LocationMarkerCallback? locationMarker;

  /// use it if you want to ovveride the default user location circle
  final CurrentLocationMarkerCallback? currentLocationMarker;

  /// we dont need to depend in any package except maps
  /// so we let you choose how you get user current location
  /// you can use location or geolocator or any thing else
  final GetLocationStreamCallBack? getLocationStream;

  /// default map options
  /// it will be ovverided by the map spaciefied options
  final OpenMapOptions? defaultOptions;

  /// The Floating button for user location button
  /// it must call the function we passed
  final MyLocationButtonCallBack? myLocationButton;

  /// You can ovveride how map images downloaded
  /// You can cache images like that
  /// ``` dart
  /// import 'package:cached_network_image/cached_network_image.dart';
  /// class CachedTileProvider extends TileProvider {
  ///   const CachedTileProvider();
  ///   @override
  ///   ImageProvider getImage(Coords<num> coords, TileLayerOptions options) {
  ///     return CachedNetworkImageProvider(
  ///       getTileUrl(coords, options),
  ///     );
  ///   }
  /// }
  /// ```
  final TileProvider defaultTileProvider;

  /// handle what type of address you want when you tap on map
  final ReverseZoom? reverseZoom;
  static OpenMapSettings? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<OpenMapSettings>();
  }

  @override
  bool updateShouldNotify(OpenMapSettings oldWidget) {
    return oldWidget.getCurrentLocation != getCurrentLocation ||
        defaultOptions != oldWidget.defaultOptions ||
        searchFilters != oldWidget.searchFilters ||
        srearchHint != oldWidget.srearchHint ||
        reverseZoom != oldWidget.reverseZoom ||
        currentLocationMarker != oldWidget.currentLocationMarker ||
        getLocationStream != oldWidget.getLocationStream ||
        locationMarker != oldWidget.locationMarker ||
        child != oldWidget.child ||
        myLocationButton != oldWidget.myLocationButton ||
        defaultTileProvider != oldWidget.defaultTileProvider;
  }
}
