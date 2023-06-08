import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';

import 'bloc.dart';
import 'location_model.dart';
import 'map_app_bar.dart';
import 'map_view_settings.dart';
import 'markers.dart';
import 'my_location_button.dart';
import 'options.dart';
import 'reverse_options.dart';
import 'search_results.dart';
import 'selected_location_view.dart';
import 'shapes.dart';

typedef MyLocationButtonCallBack = Widget Function(
    Function(LatLng destLocation, [double destZoom]) callback);

/// Map screen
/// - it can be used to display location
/// - when you pass bloc this means you want to pick location so the ui changed to map picker
/// - When you pass bloc this mean there was Scaffold so you don't need one
class OpenStreetMaps extends StatefulWidget {
  /// Set the map options you can use center or bounds
  final OpenMapOptions options;

  /// if you want this widget to act as picker you can pass this
  /// I prefer to use `OpenMapPicker` or `MultiOpenMapPicker`
  final OpenMapBloc? bloc;

  /// The Floating button for user location button
  /// it must call the function we passed
  /// You can set it also using `OpenMapSettings`
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
  /// You can set it also using `OpenMapSettings`
  final TileProvider? tileProvider;

  /// call back on pressing to done button
  /// You can set it also using `OpenMapSettings`
  final ValueChanged<SelectedLocation>? onDone;

  /// hint to display in search box
  /// You can set it also using `OpenMapSettings`
  final String? searchHint;

  /// handle what type of address you want when you tap on map
  /// You can set it also using `OpenMapSettings`
  final ReverseZoom? reverseZoom;

  /// Limiting search results to
  /// You can set it also using `OpenMapSettings`
  final SearchFilters? searchFilters;
  const OpenStreetMaps({
    Key? key,
    required this.options,
    this.bloc,
    this.tileProvider,
    this.myLocationButton,
    this.onDone,
    this.searchHint,
    this.reverseZoom,
    this.searchFilters,
  }) : super(key: key);

  @override
  State<OpenStreetMaps> createState() => _OpenStreetMapsState();

  static Future<FormattedLocation> getMyCurrentLocation(
      BuildContext context) async {
    var getCurrentLocation = OpenMapSettings.of(context)?.getCurrentLocation;
    if (getCurrentLocation == null) {
      throw FlutterError('You should add getCurrentLocation in map config');
    }
    var settings = OpenMapSettings.of(context);
    Locale locale = Localizations.localeOf(context);
    var latlng = await getCurrentLocation();
    if (latlng == null) {
      throw FlutterError('Can not detect your current location');
    }

    var zoom = settings?.reverseZoom;
    return await Reverse.reverseLocation(
      locale: locale,
      location: latlng,
      zoom: zoom,
    );
  }
}

class _OpenStreetMapsState extends State<OpenStreetMaps>
    with TickerProviderStateMixin {
  late final _MapControllerImpl _controller;
  late final _MyAnimationController _animationController;
  @override
  void initState() {
    _controller = _MapControllerImpl();
    _animationController = _MyAnimationController(this);
    super.initState();
  }

  void _onTap(LatLng latLng) async {
    var bloc = widget.bloc;
    if (bloc != null) {
      var oldState = bloc.state;
      var reversing = OpenMapState.reversing(bloc.state.selected, latLng);
      try {
        bloc.emit(reversing);
        var settings = OpenMapSettings.of(context);
        Locale locale = Localizations.localeOf(context);
        var zoom = (widget.reverseZoom ?? settings?.reverseZoom);
        var result = await Reverse.reverseLocation(
          locale: locale,
          location: latLng,
          zoom: zoom,
        );
        reversing.selected.when(
          single: (sub) {
            bloc.emit(OpenMapState.selected(SelectedLocation.single(result)));
          },
          multi: (old) {
            var exists =
                old.any((element) => element.identifier == result.identifier);
            var newList = exists
                ? old
                    .map((e) => e.identifier == result.identifier ? result : e)
                    .toList()
                : [result, ...old];
            bloc.emit(OpenMapState.selected(SelectedLocation.multi(newList)));
          },
        );
        if (result.boundingBox != null) {
          fitBounds(result.boundingBox!);
        }
      } catch (e) {
        if (mounted) {
          OpenMapSettings.of(context)?.onError?.call(context, e);
        }
        bloc.emit(oldState);
      }
    }
  }

  void _onMapReady() async {
    try {
      var settings = OpenMapSettings.of(context);
      if (widget.options.center != null) return;
      if (widget.options.bounds != null) return;
      if (settings == null) return;
      if (settings.defaultOptions?.center != null) return;
      if (settings.defaultOptions?.bounds != null) return;
      var locationCloser = settings.getCurrentLocation;
      if (locationCloser != null) {
        var res = await locationCloser();
        if (res != null) {
          moveTo(res);
        }
      }
    } catch (e) {
      if (mounted) {
        OpenMapSettings.of(context)?.onError?.call(context, e);
      }
    }
  }

  void moveTo(LatLng destLocation, [double destZoom = 13]) {
    try {
      final latTween = Tween<double>(
        begin: _controller.center.latitude,
        end: destLocation.latitude,
      );
      final lngTween = Tween<double>(
        begin: _controller.center.longitude,
        end: destLocation.longitude,
      );
      final zoomTween = Tween<double>(
        begin: _controller.zoom,
        end: destZoom,
      );

      Animation<double> animation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInCubic,
      );
      _animationController.reset();
      _animationController.addListener(() {
        if (mounted) {
          _controller.move(
            LatLng(latTween.evaluate(animation), lngTween.evaluate(animation)),
            zoomTween.evaluate(animation),
          );
        }
      });

      animation.addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reset();
        } else if (status == AnimationStatus.dismissed) {
          _animationController.reset();
        }
      });
      _animationController.forward();
    } catch (e) {
      if (kDebugMode) print(e);
    }
  }

  void fitBounds(LatLngBounds bounds) {
    if (!bounds.isValid) {
      throw Exception('Bounds are not valid.');
    }
    var target = _controller._state.getBoundsCenterZoom(
      bounds,
      const FitBoundsOptions(padding: EdgeInsets.all(12.0)),
    );
    moveTo(target.center, target.zoom);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var settings = OpenMapSettings.of(context);
    Widget? myCurrentLocation = widget.myLocationButton?.call(moveTo);
    myCurrentLocation ??= settings?.myLocationButton?.call(moveTo);
    if (myCurrentLocation == null && settings?.getCurrentLocation != null) {
      myCurrentLocation = MyLocationButton(
        moveTo: moveTo,
        selectCurrentLocationIcon:
            settings?.mapViewConfig?.selectCurrentLocationIcon,
      );
    }
    var options = widget.options.create(
      onMapReady: () => _onMapReady(),
      onTap: (_, pos) => _onTap(pos),
    );
    var bloc = widget.bloc;
    if (bloc == null) return _buildMap(options, settings);
    return Stack(
      children: [
        Scaffold(
          appBar: MapAppBar(
            bloc: bloc,
            controller: _controller,
            moveTo: moveTo,
            onDone: widget.onDone,
            searchFilters: widget.searchFilters ?? settings?.searchFilters,
            zoomInIcon: settings?.mapViewConfig?.zoomInIcon,
            zoomOutIcon: settings?.mapViewConfig?.zoomOutIcon,
            searchLoadingIndicator:
                settings?.mapViewConfig?.searchLoadingIndicator,
            searchDoneIcon: settings?.mapViewConfig?.searchDoneIcon,
            mapBackIcon: settings?.mapViewConfig?.mapBackIcon,
            searchHint: widget.searchHint ??
                settings?.searchHint?.call(context) ??
                'Search here',
          ),
          bottomNavigationBar: SelectedLocationView(
            bloc: bloc,
            fitBounds: fitBounds,
            moveTo: moveTo,
          ),
          floatingActionButton: myCurrentLocation,
          resizeToAvoidBottomInset: false,
          body: _buildMap(options, settings),
        ),
        Positioned(
          top: kToolbarHeight + MediaQuery.of(context).padding.top,
          left: 0,
          right: 0,
          child: SearchResults(
            bloc: widget.bloc!,
            fitBounds: fitBounds,
            moveTo: moveTo,
          ),
        )
      ],
    );
  }

  FlutterMap _buildMap(MapOptions options, OpenMapSettings? settings) {
    var background = Theme.of(context).scaffoldBackgroundColor;
    var isDark = Theme.of(context).brightness == Brightness.dark;
    return FlutterMap(
      options: options,
      mapController: _controller,
      children: [
        settings?.tileLayer ??
        TileLayer(
        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        subdomains: const ['a', 'b', 'c'],
        tileBuilder: (context, tileWidget, tile) {
        if (!isDark || kIsWeb) return tileWidget;
        return ColorFiltered(
        colorFilter: ColorFilter.mode(background, BlendMode.saturation),
        child: tileWidget,
        );
        },
        tileProvider: settings?.defaultTileProvider,
        ),
        if (widget.bloc != null) ...[
          MapPolygons(bloc: widget.bloc!),
          MapCircles(bloc: widget.bloc!),
          MapPolylines(bloc: widget.bloc!),
          MapMarkers(bloc: widget.bloc!),
        ],
        if (settings?.currentLocationMarker != null ||
            settings?.getLocationStream != null)
          const MyCurrentLocationMarker()
      ],
    );
  }

}

class _MyAnimationController extends AnimationController {
  _MyAnimationController(TickerProvider vsync)
      : super(vsync: vsync, duration: const Duration(milliseconds: 400));

  @override
  void reset() {
    clearListeners();
    clearStatusListeners();
    super.reset();
  }
}

class _MapControllerImpl extends MapControllerImpl {
  late FlutterMapState _state;
  @override
  set state(FlutterMapState state) {
    super.state = state;
    _state = state;
  }
}
