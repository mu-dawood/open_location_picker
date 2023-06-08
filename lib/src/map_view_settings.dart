import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import './location_model.dart';
import 'map_view.dart';
import 'map_view_config.dart';
import 'options.dart';
import 'reverse_options.dart';

typedef GetCurrentLocationCallBack = Future<LatLng?> Function();
typedef GetLocationStreamCallBack = Stream<LatLng> Function();
typedef LocationMarkerCallback = Marker Function(
    BuildContext context, FormattedLocation location);
typedef CurrentLocationMarkerCallback = Marker Function(
    BuildContext context, LatLng location);
typedef TileLayerOptionsCallBack = Map<String, String> Function(
    bool isDark, Color background, TileProvider? provider);

/// Global settings for map
/// You can wrap material app with it or wrap entire screen to override the globals
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
    this.tileLayer,
    this.searchHint,
    this.myLocationButton,
    this.searchFilters,
    this.reverseZoom,
    this.defaultTileProvider,
    this.mapViewConfig,
  }) : super(key: key, child: child);

  /// override the default map
  /// - use this if you want to use other map or other server
  /// - you can also use it to change the dark map
  /// * default is
  ///
  /// ```dart
  /// return TileLayerOptions(
  ///   urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
  ///   subdomains: ['a', 'b', 'c'],
  ///   tileBuilder: (context, tileWidget, tile) {
  ///     if (!isDark) return tileWidget;
  ///     return ColorFiltered(
  ///       colorFilter: ColorFilter.mode(background, BlendMode.saturation),
  ///       child: tileWidget,
  ///     );
  ///   },
  ///   tileProvider: provider,
  /// );
  /// ```
  final TileLayer? tileLayer;

  /// Limiting search results to
  final SearchFilters? searchFilters;

  /// hint to display in search box
  final String Function(BuildContext context)? searchHint;

  /// global error handler
  final void Function(BuildContext context, dynamic error)? onError;

  /// we don't need to depend in any package except maps
  /// so we let you choose how you get user current location
  /// you can use location or geo locator or any thing else
  final GetCurrentLocationCallBack? getCurrentLocation;

  /// call back to build custom marker
  final LocationMarkerCallback? locationMarker;

  /// use it if you want to override the default user location circle
  final CurrentLocationMarkerCallback? currentLocationMarker;

  /// we don't need to depend in any package except maps
  /// so we let you choose how you get user current location
  /// you can use location or geo locator or any thing else
  final GetLocationStreamCallBack? getLocationStream;

  /// default map options
  /// it will be override by the map specified options
  final OpenMapOptions? defaultOptions;

  /// The Floating button for user location button
  /// it must call the function we passed
  final MyLocationButtonCallBack? myLocationButton;

  /// You can override how map images downloaded
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
  final TileProvider? defaultTileProvider;

  ///Let you define visual map configurations
  final MapViewConfig? mapViewConfig;

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
        searchHint != oldWidget.searchHint ||
        reverseZoom != oldWidget.reverseZoom ||
        currentLocationMarker != oldWidget.currentLocationMarker ||
        getLocationStream != oldWidget.getLocationStream ||
        locationMarker != oldWidget.locationMarker ||
        child != oldWidget.child ||
        myLocationButton != oldWidget.myLocationButton ||
        mapViewConfig != oldWidget.mapViewConfig ||
        defaultTileProvider != oldWidget.defaultTileProvider;
  }
}
