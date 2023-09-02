// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormattedLocation {
  ///reference to the Nominatim internal database ID
  String get placeId => throw _privateConstructorUsedError;

  /// latitude of the centroid of the object
  double get lat => throw _privateConstructorUsedError;

  /// longitude of the centroid of the object
  double get lon => throw _privateConstructorUsedError;
  String get licence => throw _privateConstructorUsedError;

  ///reference to the OSM object
  String get osmType => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// reference to the OSM object
  int get osmId => throw _privateConstructorUsedError;

  /// search rank of the object
  int get placeRank => throw _privateConstructorUsedError;

  ///key of the main OSM tag
  String get category => throw _privateConstructorUsedError;

  /// value of the main OSM tag
  String get type => throw _privateConstructorUsedError;

  /// computed importance rank
  double get importance => throw _privateConstructorUsedError;
  String get addressType => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  ///full comma-separated address
  String get displayName => throw _privateConstructorUsedError;

  /// dictionary of address details
  Address get address => throw _privateConstructorUsedError;

  /// dictionary with additional useful tags like website or max speed
  Map<String, dynamic> get extratags => throw _privateConstructorUsedError;

  /// dictionary with full list of available names including ref etc
  Map<String, dynamic> get namedetails => throw _privateConstructorUsedError;

  ///area of corner coordinates
  LatLngBounds? get boundingBox => throw _privateConstructorUsedError;

  /// GeoBounds of object
  GeoGeometry get geojson => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormattedLocationCopyWith<FormattedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormattedLocationCopyWith<$Res> {
  factory $FormattedLocationCopyWith(
          FormattedLocation value, $Res Function(FormattedLocation) then) =
      _$FormattedLocationCopyWithImpl<$Res, FormattedLocation>;
  @useResult
  $Res call(
      {String placeId,
      double lat,
      double lon,
      String licence,
      String osmType,
      String? icon,
      int osmId,
      int placeRank,
      String category,
      String type,
      double importance,
      String addressType,
      String name,
      String displayName,
      Address address,
      Map<String, dynamic> extratags,
      Map<String, dynamic> namedetails,
      LatLngBounds? boundingBox,
      GeoGeometry geojson});

  $GeoGeometryCopyWith<$Res> get geojson;
}

/// @nodoc
class _$FormattedLocationCopyWithImpl<$Res, $Val extends FormattedLocation>
    implements $FormattedLocationCopyWith<$Res> {
  _$FormattedLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? lat = null,
    Object? lon = null,
    Object? licence = null,
    Object? osmType = null,
    Object? icon = freezed,
    Object? osmId = null,
    Object? placeRank = null,
    Object? category = null,
    Object? type = null,
    Object? importance = null,
    Object? addressType = null,
    Object? name = null,
    Object? displayName = null,
    Object? address = null,
    Object? extratags = null,
    Object? namedetails = null,
    Object? boundingBox = freezed,
    Object? geojson = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      licence: null == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      osmType: null == osmType
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: null == osmId
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as int,
      placeRank: null == placeRank
          ? _value.placeRank
          : placeRank // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      extratags: null == extratags
          ? _value.extratags
          : extratags // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      namedetails: null == namedetails
          ? _value.namedetails
          : namedetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      boundingBox: freezed == boundingBox
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      geojson: null == geojson
          ? _value.geojson
          : geojson // ignore: cast_nullable_to_non_nullable
              as GeoGeometry,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeoGeometryCopyWith<$Res> get geojson {
    return $GeoGeometryCopyWith<$Res>(_value.geojson, (value) {
      return _then(_value.copyWith(geojson: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FormattedLocationCopyWith<$Res>
    implements $FormattedLocationCopyWith<$Res> {
  factory _$$_FormattedLocationCopyWith(_$_FormattedLocation value,
          $Res Function(_$_FormattedLocation) then) =
      __$$_FormattedLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String placeId,
      double lat,
      double lon,
      String licence,
      String osmType,
      String? icon,
      int osmId,
      int placeRank,
      String category,
      String type,
      double importance,
      String addressType,
      String name,
      String displayName,
      Address address,
      Map<String, dynamic> extratags,
      Map<String, dynamic> namedetails,
      LatLngBounds? boundingBox,
      GeoGeometry geojson});

  @override
  $GeoGeometryCopyWith<$Res> get geojson;
}

/// @nodoc
class __$$_FormattedLocationCopyWithImpl<$Res>
    extends _$FormattedLocationCopyWithImpl<$Res, _$_FormattedLocation>
    implements _$$_FormattedLocationCopyWith<$Res> {
  __$$_FormattedLocationCopyWithImpl(
      _$_FormattedLocation _value, $Res Function(_$_FormattedLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? lat = null,
    Object? lon = null,
    Object? licence = null,
    Object? osmType = null,
    Object? icon = freezed,
    Object? osmId = null,
    Object? placeRank = null,
    Object? category = null,
    Object? type = null,
    Object? importance = null,
    Object? addressType = null,
    Object? name = null,
    Object? displayName = null,
    Object? address = null,
    Object? extratags = null,
    Object? namedetails = null,
    Object? boundingBox = freezed,
    Object? geojson = null,
  }) {
    return _then(_$_FormattedLocation(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      licence: null == licence
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      osmType: null == osmType
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: null == osmId
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as int,
      placeRank: null == placeRank
          ? _value.placeRank
          : placeRank // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double,
      addressType: null == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      extratags: null == extratags
          ? _value._extratags
          : extratags // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      namedetails: null == namedetails
          ? _value._namedetails
          : namedetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      boundingBox: freezed == boundingBox
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      geojson: null == geojson
          ? _value.geojson
          : geojson // ignore: cast_nullable_to_non_nullable
              as GeoGeometry,
    ));
  }
}

/// @nodoc

class _$_FormattedLocation extends _FormattedLocation {
  const _$_FormattedLocation(
      {required this.placeId,
      required this.lat,
      required this.lon,
      required this.licence,
      required this.osmType,
      this.icon,
      required this.osmId,
      required this.placeRank,
      required this.category,
      required this.type,
      required this.importance,
      required this.addressType,
      required this.name,
      required this.displayName,
      required this.address,
      required final Map<String, dynamic> extratags,
      required final Map<String, dynamic> namedetails,
      required this.boundingBox,
      required this.geojson})
      : _extratags = extratags,
        _namedetails = namedetails,
        super._();

  ///reference to the Nominatim internal database ID
  @override
  final String placeId;

  /// latitude of the centroid of the object
  @override
  final double lat;

  /// longitude of the centroid of the object
  @override
  final double lon;
  @override
  final String licence;

  ///reference to the OSM object
  @override
  final String osmType;
  @override
  final String? icon;

  /// reference to the OSM object
  @override
  final int osmId;

  /// search rank of the object
  @override
  final int placeRank;

  ///key of the main OSM tag
  @override
  final String category;

  /// value of the main OSM tag
  @override
  final String type;

  /// computed importance rank
  @override
  final double importance;
  @override
  final String addressType;
  @override
  final String name;

  ///full comma-separated address
  @override
  final String displayName;

  /// dictionary of address details
  @override
  final Address address;

  /// dictionary with additional useful tags like website or max speed
  final Map<String, dynamic> _extratags;

  /// dictionary with additional useful tags like website or max speed
  @override
  Map<String, dynamic> get extratags {
    if (_extratags is EqualUnmodifiableMapView) return _extratags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extratags);
  }

  /// dictionary with full list of available names including ref etc
  final Map<String, dynamic> _namedetails;

  /// dictionary with full list of available names including ref etc
  @override
  Map<String, dynamic> get namedetails {
    if (_namedetails is EqualUnmodifiableMapView) return _namedetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_namedetails);
  }

  ///area of corner coordinates
  @override
  final LatLngBounds? boundingBox;

  /// GeoBounds of object
  @override
  final GeoGeometry geojson;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormattedLocation &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.licence, licence) || other.licence == licence) &&
            (identical(other.osmType, osmType) || other.osmType == osmType) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.osmId, osmId) || other.osmId == osmId) &&
            (identical(other.placeRank, placeRank) ||
                other.placeRank == placeRank) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._extratags, _extratags) &&
            const DeepCollectionEquality()
                .equals(other._namedetails, _namedetails) &&
            (identical(other.boundingBox, boundingBox) ||
                other.boundingBox == boundingBox) &&
            (identical(other.geojson, geojson) || other.geojson == geojson));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        placeId,
        lat,
        lon,
        licence,
        osmType,
        icon,
        osmId,
        placeRank,
        category,
        type,
        importance,
        addressType,
        name,
        displayName,
        address,
        const DeepCollectionEquality().hash(_extratags),
        const DeepCollectionEquality().hash(_namedetails),
        boundingBox,
        geojson
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormattedLocationCopyWith<_$_FormattedLocation> get copyWith =>
      __$$_FormattedLocationCopyWithImpl<_$_FormattedLocation>(
          this, _$identity);
}

abstract class _FormattedLocation extends FormattedLocation {
  const factory _FormattedLocation(
      {required final String placeId,
      required final double lat,
      required final double lon,
      required final String licence,
      required final String osmType,
      final String? icon,
      required final int osmId,
      required final int placeRank,
      required final String category,
      required final String type,
      required final double importance,
      required final String addressType,
      required final String name,
      required final String displayName,
      required final Address address,
      required final Map<String, dynamic> extratags,
      required final Map<String, dynamic> namedetails,
      required final LatLngBounds? boundingBox,
      required final GeoGeometry geojson}) = _$_FormattedLocation;
  const _FormattedLocation._() : super._();

  @override

  ///reference to the Nominatim internal database ID
  String get placeId;
  @override

  /// latitude of the centroid of the object
  double get lat;
  @override

  /// longitude of the centroid of the object
  double get lon;
  @override
  String get licence;
  @override

  ///reference to the OSM object
  String get osmType;
  @override
  String? get icon;
  @override

  /// reference to the OSM object
  int get osmId;
  @override

  /// search rank of the object
  int get placeRank;
  @override

  ///key of the main OSM tag
  String get category;
  @override

  /// value of the main OSM tag
  String get type;
  @override

  /// computed importance rank
  double get importance;
  @override
  String get addressType;
  @override
  String get name;
  @override

  ///full comma-separated address
  String get displayName;
  @override

  /// dictionary of address details
  Address get address;
  @override

  /// dictionary with additional useful tags like website or max speed
  Map<String, dynamic> get extratags;
  @override

  /// dictionary with full list of available names including ref etc
  Map<String, dynamic> get namedetails;
  @override

  ///area of corner coordinates
  LatLngBounds? get boundingBox;
  @override

  /// GeoBounds of object
  GeoGeometry get geojson;
  @override
  @JsonKey(ignore: true)
  _$$_FormattedLocationCopyWith<_$_FormattedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GeoGeometry {
  Color get randomColor => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng point, Color randomColor) point,
    required TResult Function(List<LatLng> points, Color randomColor)
        linestring,
    required TResult Function(List<LatLng> points, Color randomColor) polygon,
    required TResult Function(
            List<List<List<LatLng>>> points, Color randomColor)
        multiPolygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng point, Color randomColor)? point,
    TResult? Function(List<LatLng> points, Color randomColor)? linestring,
    TResult? Function(List<LatLng> points, Color randomColor)? polygon,
    TResult? Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
    TResult Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPoint value) point,
    required TResult Function(GeoLinestring value) linestring,
    required TResult Function(GeoPolygon value) polygon,
    required TResult Function(GeoMultiPolygon value) multiPolygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPoint value)? point,
    TResult? Function(GeoLinestring value)? linestring,
    TResult? Function(GeoPolygon value)? polygon,
    TResult? Function(GeoMultiPolygon value)? multiPolygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
    TResult Function(GeoMultiPolygon value)? multiPolygon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeoGeometryCopyWith<GeoGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoGeometryCopyWith<$Res> {
  factory $GeoGeometryCopyWith(
          GeoGeometry value, $Res Function(GeoGeometry) then) =
      _$GeoGeometryCopyWithImpl<$Res, GeoGeometry>;
  @useResult
  $Res call({Color randomColor});
}

/// @nodoc
class _$GeoGeometryCopyWithImpl<$Res, $Val extends GeoGeometry>
    implements $GeoGeometryCopyWith<$Res> {
  _$GeoGeometryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? randomColor = null,
  }) {
    return _then(_value.copyWith(
      randomColor: null == randomColor
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeoPointCopyWith<$Res> implements $GeoGeometryCopyWith<$Res> {
  factory _$$GeoPointCopyWith(
          _$GeoPoint value, $Res Function(_$GeoPoint) then) =
      __$$GeoPointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng point, Color randomColor});
}

/// @nodoc
class __$$GeoPointCopyWithImpl<$Res>
    extends _$GeoGeometryCopyWithImpl<$Res, _$GeoPoint>
    implements _$$GeoPointCopyWith<$Res> {
  __$$GeoPointCopyWithImpl(_$GeoPoint _value, $Res Function(_$GeoPoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? point = null,
    Object? randomColor = null,
  }) {
    return _then(_$GeoPoint(
      null == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as LatLng,
      null == randomColor
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$GeoPoint extends GeoPoint {
  _$GeoPoint(this.point, this.randomColor) : super._();

  @override
  final LatLng point;
  @override
  final Color randomColor;

  @override
  String toString() {
    return 'GeoGeometry.point(point: $point, randomColor: $randomColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoPoint &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.randomColor, randomColor) ||
                other.randomColor == randomColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, point, randomColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoPointCopyWith<_$GeoPoint> get copyWith =>
      __$$GeoPointCopyWithImpl<_$GeoPoint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng point, Color randomColor) point,
    required TResult Function(List<LatLng> points, Color randomColor)
        linestring,
    required TResult Function(List<LatLng> points, Color randomColor) polygon,
    required TResult Function(
            List<List<List<LatLng>>> points, Color randomColor)
        multiPolygon,
  }) {
    return point(this.point, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng point, Color randomColor)? point,
    TResult? Function(List<LatLng> points, Color randomColor)? linestring,
    TResult? Function(List<LatLng> points, Color randomColor)? polygon,
    TResult? Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
  }) {
    return point?.call(this.point, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
    TResult Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
    required TResult orElse(),
  }) {
    if (point != null) {
      return point(this.point, randomColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPoint value) point,
    required TResult Function(GeoLinestring value) linestring,
    required TResult Function(GeoPolygon value) polygon,
    required TResult Function(GeoMultiPolygon value) multiPolygon,
  }) {
    return point(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPoint value)? point,
    TResult? Function(GeoLinestring value)? linestring,
    TResult? Function(GeoPolygon value)? polygon,
    TResult? Function(GeoMultiPolygon value)? multiPolygon,
  }) {
    return point?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
    TResult Function(GeoMultiPolygon value)? multiPolygon,
    required TResult orElse(),
  }) {
    if (point != null) {
      return point(this);
    }
    return orElse();
  }
}

abstract class GeoPoint extends GeoGeometry {
  factory GeoPoint(final LatLng point, final Color randomColor) = _$GeoPoint;
  GeoPoint._() : super._();

  LatLng get point;
  @override
  Color get randomColor;
  @override
  @JsonKey(ignore: true)
  _$$GeoPointCopyWith<_$GeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeoLinestringCopyWith<$Res>
    implements $GeoGeometryCopyWith<$Res> {
  factory _$$GeoLinestringCopyWith(
          _$GeoLinestring value, $Res Function(_$GeoLinestring) then) =
      __$$GeoLinestringCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LatLng> points, Color randomColor});
}

/// @nodoc
class __$$GeoLinestringCopyWithImpl<$Res>
    extends _$GeoGeometryCopyWithImpl<$Res, _$GeoLinestring>
    implements _$$GeoLinestringCopyWith<$Res> {
  __$$GeoLinestringCopyWithImpl(
      _$GeoLinestring _value, $Res Function(_$GeoLinestring) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? randomColor = null,
  }) {
    return _then(_$GeoLinestring(
      null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      null == randomColor
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$GeoLinestring extends GeoLinestring {
  _$GeoLinestring(final List<LatLng> points, this.randomColor)
      : _points = points,
        super._();

  final List<LatLng> _points;
  @override
  List<LatLng> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final Color randomColor;

  @override
  String toString() {
    return 'GeoGeometry.linestring(points: $points, randomColor: $randomColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoLinestring &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.randomColor, randomColor) ||
                other.randomColor == randomColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_points), randomColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoLinestringCopyWith<_$GeoLinestring> get copyWith =>
      __$$GeoLinestringCopyWithImpl<_$GeoLinestring>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng point, Color randomColor) point,
    required TResult Function(List<LatLng> points, Color randomColor)
        linestring,
    required TResult Function(List<LatLng> points, Color randomColor) polygon,
    required TResult Function(
            List<List<List<LatLng>>> points, Color randomColor)
        multiPolygon,
  }) {
    return linestring(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng point, Color randomColor)? point,
    TResult? Function(List<LatLng> points, Color randomColor)? linestring,
    TResult? Function(List<LatLng> points, Color randomColor)? polygon,
    TResult? Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
  }) {
    return linestring?.call(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
    TResult Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
    required TResult orElse(),
  }) {
    if (linestring != null) {
      return linestring(points, randomColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPoint value) point,
    required TResult Function(GeoLinestring value) linestring,
    required TResult Function(GeoPolygon value) polygon,
    required TResult Function(GeoMultiPolygon value) multiPolygon,
  }) {
    return linestring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPoint value)? point,
    TResult? Function(GeoLinestring value)? linestring,
    TResult? Function(GeoPolygon value)? polygon,
    TResult? Function(GeoMultiPolygon value)? multiPolygon,
  }) {
    return linestring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
    TResult Function(GeoMultiPolygon value)? multiPolygon,
    required TResult orElse(),
  }) {
    if (linestring != null) {
      return linestring(this);
    }
    return orElse();
  }
}

abstract class GeoLinestring extends GeoGeometry {
  factory GeoLinestring(final List<LatLng> points, final Color randomColor) =
      _$GeoLinestring;
  GeoLinestring._() : super._();

  List<LatLng> get points;
  @override
  Color get randomColor;
  @override
  @JsonKey(ignore: true)
  _$$GeoLinestringCopyWith<_$GeoLinestring> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeoPolygonCopyWith<$Res>
    implements $GeoGeometryCopyWith<$Res> {
  factory _$$GeoPolygonCopyWith(
          _$GeoPolygon value, $Res Function(_$GeoPolygon) then) =
      __$$GeoPolygonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LatLng> points, Color randomColor});
}

/// @nodoc
class __$$GeoPolygonCopyWithImpl<$Res>
    extends _$GeoGeometryCopyWithImpl<$Res, _$GeoPolygon>
    implements _$$GeoPolygonCopyWith<$Res> {
  __$$GeoPolygonCopyWithImpl(
      _$GeoPolygon _value, $Res Function(_$GeoPolygon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? randomColor = null,
  }) {
    return _then(_$GeoPolygon(
      null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      null == randomColor
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$GeoPolygon extends GeoPolygon {
  _$GeoPolygon(final List<LatLng> points, this.randomColor)
      : _points = points,
        super._();

  final List<LatLng> _points;
  @override
  List<LatLng> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final Color randomColor;

  @override
  String toString() {
    return 'GeoGeometry.polygon(points: $points, randomColor: $randomColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoPolygon &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.randomColor, randomColor) ||
                other.randomColor == randomColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_points), randomColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoPolygonCopyWith<_$GeoPolygon> get copyWith =>
      __$$GeoPolygonCopyWithImpl<_$GeoPolygon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng point, Color randomColor) point,
    required TResult Function(List<LatLng> points, Color randomColor)
        linestring,
    required TResult Function(List<LatLng> points, Color randomColor) polygon,
    required TResult Function(
            List<List<List<LatLng>>> points, Color randomColor)
        multiPolygon,
  }) {
    return polygon(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng point, Color randomColor)? point,
    TResult? Function(List<LatLng> points, Color randomColor)? linestring,
    TResult? Function(List<LatLng> points, Color randomColor)? polygon,
    TResult? Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
  }) {
    return polygon?.call(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
    TResult Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
    required TResult orElse(),
  }) {
    if (polygon != null) {
      return polygon(points, randomColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPoint value) point,
    required TResult Function(GeoLinestring value) linestring,
    required TResult Function(GeoPolygon value) polygon,
    required TResult Function(GeoMultiPolygon value) multiPolygon,
  }) {
    return polygon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPoint value)? point,
    TResult? Function(GeoLinestring value)? linestring,
    TResult? Function(GeoPolygon value)? polygon,
    TResult? Function(GeoMultiPolygon value)? multiPolygon,
  }) {
    return polygon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
    TResult Function(GeoMultiPolygon value)? multiPolygon,
    required TResult orElse(),
  }) {
    if (polygon != null) {
      return polygon(this);
    }
    return orElse();
  }
}

abstract class GeoPolygon extends GeoGeometry {
  factory GeoPolygon(final List<LatLng> points, final Color randomColor) =
      _$GeoPolygon;
  GeoPolygon._() : super._();

  List<LatLng> get points;
  @override
  Color get randomColor;
  @override
  @JsonKey(ignore: true)
  _$$GeoPolygonCopyWith<_$GeoPolygon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeoMultiPolygonCopyWith<$Res>
    implements $GeoGeometryCopyWith<$Res> {
  factory _$$GeoMultiPolygonCopyWith(
          _$GeoMultiPolygon value, $Res Function(_$GeoMultiPolygon) then) =
      __$$GeoMultiPolygonCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<List<LatLng>>> points, Color randomColor});
}

/// @nodoc
class __$$GeoMultiPolygonCopyWithImpl<$Res>
    extends _$GeoGeometryCopyWithImpl<$Res, _$GeoMultiPolygon>
    implements _$$GeoMultiPolygonCopyWith<$Res> {
  __$$GeoMultiPolygonCopyWithImpl(
      _$GeoMultiPolygon _value, $Res Function(_$GeoMultiPolygon) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? points = null,
    Object? randomColor = null,
  }) {
    return _then(_$GeoMultiPolygon(
      null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<List<List<LatLng>>>,
      null == randomColor
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$GeoMultiPolygon extends GeoMultiPolygon {
  _$GeoMultiPolygon(final List<List<List<LatLng>>> points, this.randomColor)
      : _points = points,
        super._();

  final List<List<List<LatLng>>> _points;
  @override
  List<List<List<LatLng>>> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  final Color randomColor;

  @override
  String toString() {
    return 'GeoGeometry.multiPolygon(points: $points, randomColor: $randomColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoMultiPolygon &&
            const DeepCollectionEquality().equals(other._points, _points) &&
            (identical(other.randomColor, randomColor) ||
                other.randomColor == randomColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_points), randomColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoMultiPolygonCopyWith<_$GeoMultiPolygon> get copyWith =>
      __$$GeoMultiPolygonCopyWithImpl<_$GeoMultiPolygon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng point, Color randomColor) point,
    required TResult Function(List<LatLng> points, Color randomColor)
        linestring,
    required TResult Function(List<LatLng> points, Color randomColor) polygon,
    required TResult Function(
            List<List<List<LatLng>>> points, Color randomColor)
        multiPolygon,
  }) {
    return multiPolygon(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng point, Color randomColor)? point,
    TResult? Function(List<LatLng> points, Color randomColor)? linestring,
    TResult? Function(List<LatLng> points, Color randomColor)? polygon,
    TResult? Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
  }) {
    return multiPolygon?.call(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
    TResult Function(List<List<List<LatLng>>> points, Color randomColor)?
        multiPolygon,
    required TResult orElse(),
  }) {
    if (multiPolygon != null) {
      return multiPolygon(points, randomColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPoint value) point,
    required TResult Function(GeoLinestring value) linestring,
    required TResult Function(GeoPolygon value) polygon,
    required TResult Function(GeoMultiPolygon value) multiPolygon,
  }) {
    return multiPolygon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GeoPoint value)? point,
    TResult? Function(GeoLinestring value)? linestring,
    TResult? Function(GeoPolygon value)? polygon,
    TResult? Function(GeoMultiPolygon value)? multiPolygon,
  }) {
    return multiPolygon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
    TResult Function(GeoMultiPolygon value)? multiPolygon,
    required TResult orElse(),
  }) {
    if (multiPolygon != null) {
      return multiPolygon(this);
    }
    return orElse();
  }
}

abstract class GeoMultiPolygon extends GeoGeometry {
  factory GeoMultiPolygon(
          final List<List<List<LatLng>>> points, final Color randomColor) =
      _$GeoMultiPolygon;
  GeoMultiPolygon._() : super._();

  List<List<List<LatLng>>> get points;
  @override
  Color get randomColor;
  @override
  @JsonKey(ignore: true)
  _$$GeoMultiPolygonCopyWith<_$GeoMultiPolygon> get copyWith =>
      throw _privateConstructorUsedError;
}
