import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:http/http.dart' as http;

import './location_model.dart';
import './map_app_bar.dart';
import './markers.dart';
import './my_location_button.dart';
import './search_results.dart';
import 'bloc.dart';
import 'map_view_settings.dart';
import 'options.dart';
import 'reverse_options.dart';
import 'selected_location_view.dart';
import 'shapes.dart';

typedef MyLocationButtonCallBack = Widget Function(Function(LatLng destLocation, [double destZoom]) callback);

/// Map screen
/// - it can be used to display location
/// - when you pass bloc this means you want to pick location so the ui changed to map picker
/// - When you pass bloc this mean there was Scaffold so you dont need one
class OpenStreetMaps extends StatefulWidget {
  /// Set the map options you can use center or bounds
  final OpenMapOptions options;

  /// if you want this widget to act as picker you can pass this
  /// I prefer to use `OpenMapPicker` or `MultiOpenMapPicker`
  final OpenMapBloc? bloc;

  /// The Floating button for user location button
  /// it must call the function we passed
  /// You can set it alos using `OpenMapSettings`
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
  /// You can set it alos using `OpenMapSettings`
  final TileProvider? tileProvider;

  /// call back on pressing to done button
  /// You can set it alos using `OpenMapSettings`
  final ValueChanged<SelectedLocation>? onDone;

  /// hint to display in search box
  /// You can set it alos using `OpenMapSettings`
  final String? srearchHint;

  /// handle what type of address you want when you tap on map
  /// You can set it alos using `OpenMapSettings`
  final ReverseZoom? reverseZoom;

  /// Limiting search results to
  /// You can set it alos using `OpenMapSettings`
  final SearchFilters? searchFilters;
  const OpenStreetMaps({
    Key? key,
    required this.options,
    this.bloc,
    this.tileProvider,
    this.myLocationButton,
    this.onDone,
    this.srearchHint,
    this.reverseZoom,
    this.searchFilters,
  }) : super(key: key);

  @override
  _OpenStreetMapsState createState() => _OpenStreetMapsState();
}

class _OpenStreetMapsState extends State<OpenStreetMaps> with TickerProviderStateMixin {
  late final _MapControllerImpl _controller;
  late final _MyAnimationController _animationController;
  @override
  void initState() {
    _controller = _MapControllerImpl();
    _animationController = _MyAnimationController(this);
    super.initState();
  }

  Future<FormattedLocation> _reverse(LatLng loc) async {
    var settings = OpenMapSettings.of(context);
    Locale locale = Localizations.localeOf(context);
    var url = Uri.parse("https://nominatim.openstreetmap.org/reverse");
    var zoom = (widget.reverseZoom ?? settings?.reverseZoom)?.zoom();
    url = url.replace(
      queryParameters: {
        "lat": loc.latitude.toString(),
        "lon": loc.longitude.toString(),
        "format": "jsonv2",
        "namedetails": "1",
        "accept-language": locale.languageCode,
        if (zoom != null) "zoom": zoom,
        "addressdetails": "1",
        "polygon_geojson": "1",
        "extratags": "1",
      },
    );
    var response = await http.get(url);

    var parsed = jsonDecode(response.body);
    var res = FormattedLocation.from(parsed);
    return res;
  }

  void _onTap(LatLng latLng) async {
    var bloc = widget.bloc;
    if (bloc != null) {
      var _oldState = bloc.state;
      var _reversing = OpenMapState.reversing(bloc.state.selected, latLng);
      try {
        bloc.emit(_reversing);
        var result = await _reverse(latLng);
        _reversing.selected.when(
          single: (sub) {
            bloc.emit(OpenMapState.selected(SelectedLocation.single(result)));
          },
          multi: (old) {
            var exists = old.any((element) => element.identifier == result.identifier);
            var _new =
                exists ? old.map((e) => e.identifier == result.identifier ? result : e).toList() : [result, ...old];
            bloc.emit(OpenMapState.selected(SelectedLocation.multi(_new)));
          },
        );
        fitBounds(result.boundingbox);
      } catch (e) {
        if (mounted) {
          OpenMapSettings.of(context)?.onError?.call(context, e);
        }
        bloc.emit(_oldState);
      }
    }
  }

  void _onMapCreated(MapController controller, OpenMapSettings? settings) async {
    try {
      if (settings?.getCurrentLocation != null) {
        if (widget.options.center != null) return;
        if (widget.options.bounds != null) return;
        if (settings?.defaultOptions?.center != null) return;
        if (settings?.defaultOptions?.bounds != null) return;
        var res = await settings!.getCurrentLocation!();
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
      final _latTween = Tween<double>(
        begin: _controller.center.latitude,
        end: destLocation.latitude,
      );
      final _lngTween = Tween<double>(
        begin: _controller.center.longitude,
        end: destLocation.longitude,
      );
      final _zoomTween = Tween<double>(
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
            LatLng(_latTween.evaluate(animation), _lngTween.evaluate(animation)),
            _zoomTween.evaluate(animation),
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
    Widget? _myCurrentLocation = widget.myLocationButton?.call(moveTo);
    _myCurrentLocation ??= settings?.myLocationButton?.call(moveTo);
    if (_myCurrentLocation == null && settings?.getCurrentLocation != null) {
      _myCurrentLocation = MyLocationButton(moveTo: moveTo);
    }
    var options = widget.options.create(
      controller: _controller,
      onMapCreated: (_) => _onMapCreated(_, settings),
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
            srearchHint: widget.srearchHint ?? settings?.srearchHint?.call(context) ?? 'Search here',
          ),
          bottomNavigationBar: SelectedLocationView(bloc: bloc, fitBounds: fitBounds),
          floatingActionButton: _myCurrentLocation,
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
        TileLayerWidget(
          options: TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
            tileBuilder: (context, tileWidget, tile) {
              if (!isDark) return tileWidget;
              return ColorFiltered(
                colorFilter: ColorFilter.mode(background, BlendMode.saturation),
                child: tileWidget,
              );
            },
            tileProvider: widget.tileProvider ?? settings?.defaultTileProvider ?? const NonCachingNetworkTileProvider(),
          ),
        ),
      ],
      nonRotatedChildren: [
        if (widget.bloc != null) ...[
          MapPolygens(bloc: widget.bloc!),
          MapCircles(bloc: widget.bloc!),
          MapPolylines(bloc: widget.bloc!),
          MapMarkers(bloc: widget.bloc!),
        ],
        if (settings?.currentLocationMarker != null || settings?.getLocationStream != null)
          const MyCurrentLocationMarker()
      ],
    );
  }
}

class _MyAnimationController extends AnimationController {
  _MyAnimationController(TickerProvider vsync) : super(vsync: vsync, duration: const Duration(milliseconds: 400));

  @override
  void reset() {
    clearListeners();
    clearStatusListeners();
    super.reset();
  }
}

class _MapControllerImpl extends MapControllerImpl {
  late MapState _state;
  @override
  set state(MapState state) {
    super.state = state;
    _state = state;
  }
}
