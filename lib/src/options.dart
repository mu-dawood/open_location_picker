import 'dart:ui';

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import 'map_view_settings.dart';

/// Allows you to provide your map's starting properties for [zoom], [rotation]
/// and [center]. Alternatively you can provide [bounds] instead of [center].
/// If both, [center] and [bounds] are provided, bounds will take preference
/// over [center].
/// Zoom, pan boundary and interactivity constraints can be specified here too.
///
/// Callbacks for [onTap], [onLongPress] and [onPositionChanged] can be
/// registered here.
///
/// Through [crs] the Coordinate Reference System can be
/// defined, it defaults to [Epsg3857].
///
/// Checks if a coordinate is outside of the map's
/// defined boundaries.
///
/// If you download offline tiles dynamically, you can set [adaptiveBoundaries]
/// to true (make sure to pass [screenSize] and an external [controller]), which
/// will enforce panning/zooming to ensure there is never a need to display
/// tiles outside the boundaries set by [swPanBoundary] and [nePanBoundary].
class OpenMapOptions {
  final Crs? crs;
  final double? zoom;
  final double? rotation;

  /// Prints multi finger gesture winner Helps to fine adjust
  /// [rotationThreshold] and [pinchZoomThreshold] and [pinchMoveThreshold]
  /// Note: only takes effect if [enableMultiFingerGestureRace] is true
  final bool? debugMultiFingerGestureWinner;

  /// If true then [rotationThreshold] and [pinchZoomThreshold] and
  /// [pinchMoveThreshold] will race If multiple gestures win at the same time
  /// then precedence: [pinchZoomWinGestures] > [rotationWinGestures] >
  /// [pinchMoveWinGestures]
  final bool? enableMultiFingerGestureRace;

  /// Rotation threshold in degree default is 20.0 Map starts to rotate when
  /// [rotationThreshold] has been achieved or another multi finger gesture wins
  /// which allows [MultiFingerGesture.rotate] Note: if [interactiveFlags]
  /// doesn't contain [InteractiveFlag.rotate] or [enableMultiFingerGestureRace]
  /// is false then rotate cannot win
  final double? rotationThreshold;

  /// When [rotationThreshold] wins over [pinchZoomThreshold] and
  /// [pinchMoveThreshold] then [rotationWinGestures] gestures will be used. By
  /// default only [MultiFingerGesture.rotate] gesture will take effect see
  /// [MultiFingerGesture] for custom settings
  final int? rotationWinGestures;

  /// Pinch Zoom threshold default is 0.5 Map starts to zoom when
  /// [pinchZoomThreshold] has been achieved or another multi finger gesture
  /// wins which allows [MultiFingerGesture.pinchZoom] Note: if
  /// [interactiveFlags] doesn't contain [InteractiveFlag.pinchZoom] or
  /// [enableMultiFingerGestureRace] is false then zoom cannot win
  final double? pinchZoomThreshold;

  /// When [pinchZoomThreshold] wins over [rotationThreshold] and
  /// [pinchMoveThreshold] then [pinchZoomWinGestures] gestures will be used. By
  /// default [MultiFingerGesture.pinchZoom] and [MultiFingerGesture.pinchMove]
  /// gestures will take effect see [MultiFingerGesture] for custom settings
  final int? pinchZoomWinGestures;

  /// Pinch Move threshold default is 40.0 (note: this doesn't take any effect
  /// on drag) Map starts to move when [pinchMoveThreshold] has been achieved or
  /// another multi finger gesture wins which allows
  /// [MultiFingerGesture.pinchMove] Note: if [interactiveFlags] doesn't contain
  /// [InteractiveFlag.pinchMove] or [enableMultiFingerGestureRace] is false
  /// then pinch move cannot win
  final double? pinchMoveThreshold;

  /// When [pinchMoveThreshold] wins over [rotationThreshold] and
  /// [pinchZoomThreshold] then [pinchMoveWinGestures] gestures will be used. By
  /// default [MultiFingerGesture.pinchMove] and [MultiFingerGesture.pinchZoom]
  /// gestures will take effect see [MultiFingerGesture] for custom settings
  final int? pinchMoveWinGestures;

  /// If true then the map will scroll when the user uses the scroll wheel on
  /// his mouse. This is supported on web and desktop, but might also work well
  /// on Android. A [Listener] is used to capture the onPointerSignal events.
  final bool? enableScrollWheel;

  final double? minZoom;
  final double? maxZoom;

  /// see [InteractiveFlag] for custom settings
  final int? interactiveFlags;

  final LatLngBounds? maxBounds;
  final bool? keepAlive;

  final LongPressCallback? onLongPress;
  final PositionCallback? onPositionChanged;
  final bool? slideOnBoundaries;
  final Size? screenSize;
  final bool? adaptiveBoundaries;
  final LatLng? _center;
  final LatLngBounds? _bounds;
  final FitBoundsOptions? _boundsOptions;
  final LatLng? swPanBoundary;
  final LatLng? nePanBoundary;
  LatLng? get center => _center;
  LatLngBounds? get bounds => _bounds;
  FitBoundsOptions? get boundsOptions => _boundsOptions;
  OpenMapOptions({
    this.crs,
    this.zoom,
    this.rotation,
    this.debugMultiFingerGestureWinner,
    this.enableMultiFingerGestureRace,
    this.rotationThreshold,
    this.rotationWinGestures,
    this.pinchZoomThreshold,
    this.pinchZoomWinGestures,
    this.pinchMoveThreshold,
    this.pinchMoveWinGestures,
    this.enableScrollWheel,
    this.minZoom,
    this.maxZoom,
    this.interactiveFlags,
    this.maxBounds,
    this.keepAlive,
    this.onLongPress,
    this.onPositionChanged,
    this.slideOnBoundaries,
    this.screenSize,
    this.adaptiveBoundaries,
    LatLng? center,
    this.swPanBoundary,
    this.nePanBoundary,
  })  : _bounds = null,
        _center = center,
        _boundsOptions = null;

  OpenMapOptions.bounds({
    this.crs,
    this.zoom,
    this.rotation,
    this.debugMultiFingerGestureWinner,
    this.enableMultiFingerGestureRace,
    this.rotationThreshold,
    this.rotationWinGestures,
    this.pinchZoomThreshold,
    this.pinchZoomWinGestures,
    this.pinchMoveThreshold,
    this.pinchMoveWinGestures,
    this.enableScrollWheel,
    this.minZoom,
    this.maxZoom,
    this.interactiveFlags,
    this.maxBounds,
    this.keepAlive,
    this.onLongPress,
    this.onPositionChanged,
    this.slideOnBoundaries,
    this.screenSize,
    this.adaptiveBoundaries,
    required LatLngBounds bounds,
    FitBoundsOptions? boundsOptions,
    this.swPanBoundary,
    this.nePanBoundary,
  })  : _center = null,
        _boundsOptions = boundsOptions,
        _bounds = bounds;

  MapOptions create({
    required void Function()? onMapReady,
    required TapCallback onTap,
    OpenMapSettings? settings,
  }) {
    var def = settings?.defaultOptions?.create(
            onMapReady: onMapReady,
            onTap: onTap,
            settings: null) ??
        MapOptions();
    return MapOptions(
      maxBounds: maxBounds ?? def.maxBounds,
      keepAlive:
          keepAlive ?? def.keepAlive,
      crs: crs ?? def.crs,
      center: _center ?? def.center,
      bounds: _bounds ?? def.bounds,
      boundsOptions: _boundsOptions ?? def.boundsOptions,
      zoom: zoom ?? def.zoom,
      rotation: rotation ?? def.rotation,
      debugMultiFingerGestureWinner:
          debugMultiFingerGestureWinner ?? def.debugMultiFingerGestureWinner,
      enableMultiFingerGestureRace:
          enableMultiFingerGestureRace ?? def.enableMultiFingerGestureRace,
      rotationThreshold: rotationThreshold ?? def.rotationThreshold,
      rotationWinGestures: rotationWinGestures ?? def.rotationWinGestures,
      pinchZoomThreshold: pinchZoomThreshold ?? def.pinchZoomThreshold,
      pinchZoomWinGestures: pinchZoomWinGestures ?? def.pinchZoomWinGestures,
      pinchMoveThreshold: pinchMoveThreshold ?? def.pinchMoveThreshold,
      pinchMoveWinGestures: pinchMoveWinGestures ?? def.pinchMoveWinGestures,
      enableScrollWheel: enableScrollWheel ?? def.enableScrollWheel,
      minZoom: minZoom ?? def.minZoom,
      maxZoom: maxZoom ?? def.maxZoom,
      interactiveFlags: interactiveFlags ?? def.interactiveFlags,
      onLongPress: onLongPress ?? def.onLongPress,
      onMapReady: onMapReady,
      onTap: onTap,
      onPositionChanged: onPositionChanged ?? def.onPositionChanged,
      slideOnBoundaries: slideOnBoundaries ?? def.slideOnBoundaries,
      adaptiveBoundaries: adaptiveBoundaries ?? def.adaptiveBoundaries,
      screenSize: screenSize ?? def.screenSize,
      swPanBoundary: swPanBoundary ?? def.swPanBoundary,
      nePanBoundary: nePanBoundary ?? def.nePanBoundary,
    );
  }

  OpenMapOptions copyWith({
    Crs? crs,
    double? zoom,
    double? rotation,
    bool? debugMultiFingerGestureWinner,
    bool? enableMultiFingerGestureRace,
    double? rotationThreshold,
    int? rotationWinGestures,
    double? pinchZoomThreshold,
    int? pinchZoomWinGestures,
    double? pinchMoveThreshold,
    int? pinchMoveWinGestures,
    bool? enableScrollWheel,
    double? minZoom,
    double? maxZoom,
    int? interactiveFlags,
    LatLngBounds? maxBounds,
    bool? keepAlive,
    LongPressCallback? onLongPress,
    PositionCallback? onPositionChanged,
    bool? slideOnBoundaries,
    Size? screenSize,
    bool? adaptiveBoundaries,
    LatLng? swPanBoundary,
    LatLng? nePanBoundary,
  }) {
    if (_bounds != null) {
      return OpenMapOptions.bounds(
        crs: crs ?? this.crs,
        zoom: zoom ?? this.zoom,
        rotation: rotation ?? this.rotation,
        debugMultiFingerGestureWinner:
            debugMultiFingerGestureWinner ?? this.debugMultiFingerGestureWinner,
        enableMultiFingerGestureRace:
            enableMultiFingerGestureRace ?? this.enableMultiFingerGestureRace,
        rotationThreshold: rotationThreshold ?? this.rotationThreshold,
        rotationWinGestures: rotationWinGestures ?? this.rotationWinGestures,
        pinchZoomThreshold: pinchZoomThreshold ?? this.pinchZoomThreshold,
        pinchZoomWinGestures: pinchZoomWinGestures ?? this.pinchZoomWinGestures,
        pinchMoveThreshold: pinchMoveThreshold ?? this.pinchMoveThreshold,
        pinchMoveWinGestures: pinchMoveWinGestures ?? this.pinchMoveWinGestures,
        enableScrollWheel: enableScrollWheel ?? this.enableScrollWheel,
        minZoom: minZoom ?? this.minZoom,
        maxZoom: maxZoom ?? this.maxZoom,
        interactiveFlags: interactiveFlags ?? this.interactiveFlags,
        maxBounds: maxBounds ?? this.maxBounds,
        keepAlive:
            keepAlive ?? this.keepAlive,
        onLongPress: onLongPress ?? this.onLongPress,
        onPositionChanged: onPositionChanged ?? this.onPositionChanged,
        slideOnBoundaries: slideOnBoundaries ?? this.slideOnBoundaries,
        screenSize: screenSize ?? this.screenSize,
        adaptiveBoundaries: adaptiveBoundaries ?? this.adaptiveBoundaries,
        bounds: _bounds!,
        boundsOptions: _boundsOptions,
        swPanBoundary: swPanBoundary ?? this.swPanBoundary,
        nePanBoundary: nePanBoundary ?? this.nePanBoundary,
      );
    }
    return OpenMapOptions(
      crs: crs ?? this.crs,
      zoom: zoom ?? this.zoom,
      rotation: rotation ?? this.rotation,
      debugMultiFingerGestureWinner:
          debugMultiFingerGestureWinner ?? this.debugMultiFingerGestureWinner,
      enableMultiFingerGestureRace:
          enableMultiFingerGestureRace ?? this.enableMultiFingerGestureRace,
      rotationThreshold: rotationThreshold ?? this.rotationThreshold,
      rotationWinGestures: rotationWinGestures ?? this.rotationWinGestures,
      pinchZoomThreshold: pinchZoomThreshold ?? this.pinchZoomThreshold,
      pinchZoomWinGestures: pinchZoomWinGestures ?? this.pinchZoomWinGestures,
      pinchMoveThreshold: pinchMoveThreshold ?? this.pinchMoveThreshold,
      pinchMoveWinGestures: pinchMoveWinGestures ?? this.pinchMoveWinGestures,
      enableScrollWheel: enableScrollWheel ?? this.enableScrollWheel,
      minZoom: minZoom ?? this.minZoom,
      maxZoom: maxZoom ?? this.maxZoom,
      interactiveFlags: interactiveFlags ?? this.interactiveFlags,
      maxBounds: maxBounds ?? this.maxBounds,
      keepAlive:
          keepAlive ?? this.keepAlive,
      onLongPress: onLongPress ?? this.onLongPress,
      onPositionChanged: onPositionChanged ?? this.onPositionChanged,
      slideOnBoundaries: slideOnBoundaries ?? this.slideOnBoundaries,
      screenSize: screenSize ?? this.screenSize,
      adaptiveBoundaries: adaptiveBoundaries ?? this.adaptiveBoundaries,
      center: _center,
      swPanBoundary: swPanBoundary ?? this.swPanBoundary,
      nePanBoundary: nePanBoundary ?? this.nePanBoundary,
    );
  }

  OpenMapOptions copyWithBounds({
    required LatLngBounds bounds,
    FitBoundsOptions? boundsOptions,
    Crs? crs,
    double? zoom,
    double? rotation,
    bool? debugMultiFingerGestureWinner,
    bool? enableMultiFingerGestureRace,
    double? rotationThreshold,
    int? rotationWinGestures,
    double? pinchZoomThreshold,
    int? pinchZoomWinGestures,
    double? pinchMoveThreshold,
    int? pinchMoveWinGestures,
    bool? enableScrollWheel,
    double? minZoom,
    double? maxZoom,
    int? interactiveFlags,
    LatLngBounds? maxBounds,
    bool? keepAlive,
    LongPressCallback? onLongPress,
    PositionCallback? onPositionChanged,
    bool? slideOnBoundaries,
    Size? screenSize,
    bool? adaptiveBoundaries,
    LatLng? swPanBoundary,
    LatLng? nePanBoundary,
  }) {
    return OpenMapOptions.bounds(
      crs: crs ?? this.crs,
      zoom: zoom ?? this.zoom,
      rotation: rotation ?? this.rotation,
      debugMultiFingerGestureWinner:
          debugMultiFingerGestureWinner ?? this.debugMultiFingerGestureWinner,
      enableMultiFingerGestureRace:
          enableMultiFingerGestureRace ?? this.enableMultiFingerGestureRace,
      rotationThreshold: rotationThreshold ?? this.rotationThreshold,
      rotationWinGestures: rotationWinGestures ?? this.rotationWinGestures,
      pinchZoomThreshold: pinchZoomThreshold ?? this.pinchZoomThreshold,
      pinchZoomWinGestures: pinchZoomWinGestures ?? this.pinchZoomWinGestures,
      pinchMoveThreshold: pinchMoveThreshold ?? this.pinchMoveThreshold,
      pinchMoveWinGestures: pinchMoveWinGestures ?? this.pinchMoveWinGestures,
      enableScrollWheel: enableScrollWheel ?? this.enableScrollWheel,
      minZoom: minZoom ?? this.minZoom,
      maxZoom: maxZoom ?? this.maxZoom,
      interactiveFlags: interactiveFlags ?? this.interactiveFlags,
      maxBounds: maxBounds ?? this.maxBounds,
      keepAlive:
          keepAlive ?? this.keepAlive,
      onLongPress: onLongPress ?? this.onLongPress,
      onPositionChanged: onPositionChanged ?? this.onPositionChanged,
      slideOnBoundaries: slideOnBoundaries ?? this.slideOnBoundaries,
      screenSize: screenSize ?? this.screenSize,
      adaptiveBoundaries: adaptiveBoundaries ?? this.adaptiveBoundaries,
      bounds: bounds,
      boundsOptions: boundsOptions ?? _boundsOptions,
      swPanBoundary: swPanBoundary ?? this.swPanBoundary,
      nePanBoundary: nePanBoundary ?? this.nePanBoundary,
    );
  }
}
