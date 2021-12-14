// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormattedLocationTearOff {
  const _$FormattedLocationTearOff();

  _FormattedLocation call(
      {String placeId = '',
      required double lat,
      required double lon,
      required String licence,
      required String osmType,
      required String? icon,
      required int osmId,
      required int placeRank,
      required String category,
      required String type,
      required double importance,
      required String addresstype,
      required String name,
      required String displayName,
      required Address address,
      required Map<String, dynamic> extratags,
      required Map<String, dynamic> namedetails,
      required LatLngBounds boundingbox,
      required GeoGeometry geojson,
      Map<String, String> names = const {}}) {
    return _FormattedLocation(
      placeId: placeId,
      lat: lat,
      lon: lon,
      licence: licence,
      osmType: osmType,
      icon: icon,
      osmId: osmId,
      placeRank: placeRank,
      category: category,
      type: type,
      importance: importance,
      addresstype: addresstype,
      name: name,
      displayName: displayName,
      address: address,
      extratags: extratags,
      namedetails: namedetails,
      boundingbox: boundingbox,
      geojson: geojson,
      names: names,
    );
  }
}

/// @nodoc
const $FormattedLocation = _$FormattedLocationTearOff();

/// @nodoc
mixin _$FormattedLocation {
  ///reference to the Nominatim internal database ID
  String get placeId => throw _privateConstructorUsedError;

  /// latitude of the centroid of the object
  double get lat => throw _privateConstructorUsedError;

  /// llongitude of the centroid of the object
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
  String get addresstype => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  ///full comma-separated address
  String get displayName => throw _privateConstructorUsedError;

  /// dictionary of address details
  Address get address => throw _privateConstructorUsedError;

  /// dictionary with additional useful tags like website or maxspeed
  Map<String, dynamic> get extratags => throw _privateConstructorUsedError;

  /// ictionary with full list of available names including ref etc
  Map<String, dynamic> get namedetails => throw _privateConstructorUsedError;

  ///area of corner coordinates
  LatLngBounds get boundingbox => throw _privateConstructorUsedError;

  /// Geobouds of object
  GeoGeometry get geojson => throw _privateConstructorUsedError;
  Map<String, String> get names => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormattedLocationCopyWith<FormattedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormattedLocationCopyWith<$Res> {
  factory $FormattedLocationCopyWith(
          FormattedLocation value, $Res Function(FormattedLocation) then) =
      _$FormattedLocationCopyWithImpl<$Res>;
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
      String addresstype,
      String name,
      String displayName,
      Address address,
      Map<String, dynamic> extratags,
      Map<String, dynamic> namedetails,
      LatLngBounds boundingbox,
      GeoGeometry geojson,
      Map<String, String> names});

  $GeoGeometryCopyWith<$Res> get geojson;
}

/// @nodoc
class _$FormattedLocationCopyWithImpl<$Res>
    implements $FormattedLocationCopyWith<$Res> {
  _$FormattedLocationCopyWithImpl(this._value, this._then);

  final FormattedLocation _value;
  // ignore: unused_field
  final $Res Function(FormattedLocation) _then;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? licence = freezed,
    Object? osmType = freezed,
    Object? icon = freezed,
    Object? osmId = freezed,
    Object? placeRank = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? importance = freezed,
    Object? addresstype = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? address = freezed,
    Object? extratags = freezed,
    Object? namedetails = freezed,
    Object? boundingbox = freezed,
    Object? geojson = freezed,
    Object? names = freezed,
  }) {
    return _then(_value.copyWith(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      licence: licence == freezed
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      osmType: osmType == freezed
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: osmId == freezed
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as int,
      placeRank: placeRank == freezed
          ? _value.placeRank
          : placeRank // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double,
      addresstype: addresstype == freezed
          ? _value.addresstype
          : addresstype // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      extratags: extratags == freezed
          ? _value.extratags
          : extratags // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      namedetails: namedetails == freezed
          ? _value.namedetails
          : namedetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      boundingbox: boundingbox == freezed
          ? _value.boundingbox
          : boundingbox // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      geojson: geojson == freezed
          ? _value.geojson
          : geojson // ignore: cast_nullable_to_non_nullable
              as GeoGeometry,
      names: names == freezed
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }

  @override
  $GeoGeometryCopyWith<$Res> get geojson {
    return $GeoGeometryCopyWith<$Res>(_value.geojson, (value) {
      return _then(_value.copyWith(geojson: value));
    });
  }
}

/// @nodoc
abstract class _$FormattedLocationCopyWith<$Res>
    implements $FormattedLocationCopyWith<$Res> {
  factory _$FormattedLocationCopyWith(
          _FormattedLocation value, $Res Function(_FormattedLocation) then) =
      __$FormattedLocationCopyWithImpl<$Res>;
  @override
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
      String addresstype,
      String name,
      String displayName,
      Address address,
      Map<String, dynamic> extratags,
      Map<String, dynamic> namedetails,
      LatLngBounds boundingbox,
      GeoGeometry geojson,
      Map<String, String> names});

  @override
  $GeoGeometryCopyWith<$Res> get geojson;
}

/// @nodoc
class __$FormattedLocationCopyWithImpl<$Res>
    extends _$FormattedLocationCopyWithImpl<$Res>
    implements _$FormattedLocationCopyWith<$Res> {
  __$FormattedLocationCopyWithImpl(
      _FormattedLocation _value, $Res Function(_FormattedLocation) _then)
      : super(_value, (v) => _then(v as _FormattedLocation));

  @override
  _FormattedLocation get _value => super._value as _FormattedLocation;

  @override
  $Res call({
    Object? placeId = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? licence = freezed,
    Object? osmType = freezed,
    Object? icon = freezed,
    Object? osmId = freezed,
    Object? placeRank = freezed,
    Object? category = freezed,
    Object? type = freezed,
    Object? importance = freezed,
    Object? addresstype = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? address = freezed,
    Object? extratags = freezed,
    Object? namedetails = freezed,
    Object? boundingbox = freezed,
    Object? geojson = freezed,
    Object? names = freezed,
  }) {
    return _then(_FormattedLocation(
      placeId: placeId == freezed
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: lon == freezed
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      licence: licence == freezed
          ? _value.licence
          : licence // ignore: cast_nullable_to_non_nullable
              as String,
      osmType: osmType == freezed
          ? _value.osmType
          : osmType // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      osmId: osmId == freezed
          ? _value.osmId
          : osmId // ignore: cast_nullable_to_non_nullable
              as int,
      placeRank: placeRank == freezed
          ? _value.placeRank
          : placeRank // ignore: cast_nullable_to_non_nullable
              as int,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as double,
      addresstype: addresstype == freezed
          ? _value.addresstype
          : addresstype // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      extratags: extratags == freezed
          ? _value.extratags
          : extratags // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      namedetails: namedetails == freezed
          ? _value.namedetails
          : namedetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      boundingbox: boundingbox == freezed
          ? _value.boundingbox
          : boundingbox // ignore: cast_nullable_to_non_nullable
              as LatLngBounds,
      geojson: geojson == freezed
          ? _value.geojson
          : geojson // ignore: cast_nullable_to_non_nullable
              as GeoGeometry,
      names: names == freezed
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_FormattedLocation extends _FormattedLocation {
  const _$_FormattedLocation(
      {this.placeId = '',
      required this.lat,
      required this.lon,
      required this.licence,
      required this.osmType,
      required this.icon,
      required this.osmId,
      required this.placeRank,
      required this.category,
      required this.type,
      required this.importance,
      required this.addresstype,
      required this.name,
      required this.displayName,
      required this.address,
      required this.extratags,
      required this.namedetails,
      required this.boundingbox,
      required this.geojson,
      this.names = const {}})
      : super._();

  @JsonKey()
  @override

  ///reference to the Nominatim internal database ID
  final String placeId;
  @override

  /// latitude of the centroid of the object
  final double lat;
  @override

  /// llongitude of the centroid of the object
  final double lon;
  @override
  final String licence;
  @override

  ///reference to the OSM object
  final String osmType;
  @override
  final String? icon;
  @override

  /// reference to the OSM object
  final int osmId;
  @override

  /// search rank of the object
  final int placeRank;
  @override

  ///key of the main OSM tag
  final String category;
  @override

  /// value of the main OSM tag
  final String type;
  @override

  /// computed importance rank
  final double importance;
  @override
  final String addresstype;
  @override
  final String name;
  @override

  ///full comma-separated address
  final String displayName;
  @override

  /// dictionary of address details
  final Address address;
  @override

  /// dictionary with additional useful tags like website or maxspeed
  final Map<String, dynamic> extratags;
  @override

  /// ictionary with full list of available names including ref etc
  final Map<String, dynamic> namedetails;
  @override

  ///area of corner coordinates
  final LatLngBounds boundingbox;
  @override

  /// Geobouds of object
  final GeoGeometry geojson;
  @JsonKey()
  @override
  final Map<String, String> names;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormattedLocation &&
            const DeepCollectionEquality().equals(other.placeId, placeId) &&
            const DeepCollectionEquality().equals(other.lat, lat) &&
            const DeepCollectionEquality().equals(other.lon, lon) &&
            const DeepCollectionEquality().equals(other.licence, licence) &&
            const DeepCollectionEquality().equals(other.osmType, osmType) &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.osmId, osmId) &&
            const DeepCollectionEquality().equals(other.placeRank, placeRank) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality()
                .equals(other.addresstype, addresstype) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.extratags, extratags) &&
            const DeepCollectionEquality()
                .equals(other.namedetails, namedetails) &&
            const DeepCollectionEquality()
                .equals(other.boundingbox, boundingbox) &&
            const DeepCollectionEquality().equals(other.geojson, geojson) &&
            const DeepCollectionEquality().equals(other.names, names));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(placeId),
        const DeepCollectionEquality().hash(lat),
        const DeepCollectionEquality().hash(lon),
        const DeepCollectionEquality().hash(licence),
        const DeepCollectionEquality().hash(osmType),
        const DeepCollectionEquality().hash(icon),
        const DeepCollectionEquality().hash(osmId),
        const DeepCollectionEquality().hash(placeRank),
        const DeepCollectionEquality().hash(category),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(importance),
        const DeepCollectionEquality().hash(addresstype),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(displayName),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(extratags),
        const DeepCollectionEquality().hash(namedetails),
        const DeepCollectionEquality().hash(boundingbox),
        const DeepCollectionEquality().hash(geojson),
        const DeepCollectionEquality().hash(names)
      ]);

  @JsonKey(ignore: true)
  @override
  _$FormattedLocationCopyWith<_FormattedLocation> get copyWith =>
      __$FormattedLocationCopyWithImpl<_FormattedLocation>(this, _$identity);
}

abstract class _FormattedLocation extends FormattedLocation {
  const factory _FormattedLocation(
      {String placeId,
      required double lat,
      required double lon,
      required String licence,
      required String osmType,
      required String? icon,
      required int osmId,
      required int placeRank,
      required String category,
      required String type,
      required double importance,
      required String addresstype,
      required String name,
      required String displayName,
      required Address address,
      required Map<String, dynamic> extratags,
      required Map<String, dynamic> namedetails,
      required LatLngBounds boundingbox,
      required GeoGeometry geojson,
      Map<String, String> names}) = _$_FormattedLocation;
  const _FormattedLocation._() : super._();

  @override

  ///reference to the Nominatim internal database ID
  String get placeId;
  @override

  /// latitude of the centroid of the object
  double get lat;
  @override

  /// llongitude of the centroid of the object
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
  String get addresstype;
  @override
  String get name;
  @override

  ///full comma-separated address
  String get displayName;
  @override

  /// dictionary of address details
  Address get address;
  @override

  /// dictionary with additional useful tags like website or maxspeed
  Map<String, dynamic> get extratags;
  @override

  /// ictionary with full list of available names including ref etc
  Map<String, dynamic> get namedetails;
  @override

  ///area of corner coordinates
  LatLngBounds get boundingbox;
  @override

  /// Geobouds of object
  GeoGeometry get geojson;
  @override
  Map<String, String> get names;
  @override
  @JsonKey(ignore: true)
  _$FormattedLocationCopyWith<_FormattedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GeoGeometryTearOff {
  const _$GeoGeometryTearOff();

  GeoPoint point(LatLng point, Color randomColor) {
    return GeoPoint(
      point,
      randomColor,
    );
  }

  GeoLinestring linestring(List<LatLng> points, Color randomColor) {
    return GeoLinestring(
      points,
      randomColor,
    );
  }

  GeoPolygon polygon(List<LatLng> points, Color randomColor) {
    return GeoPolygon(
      points,
      randomColor,
    );
  }
}

/// @nodoc
const $GeoGeometry = _$GeoGeometryTearOff();

/// @nodoc
mixin _$GeoGeometry {
  Color get randomColor => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng point, Color randomColor) point,
    required TResult Function(List<LatLng> points, Color randomColor)
        linestring,
    required TResult Function(List<LatLng> points, Color randomColor) polygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GeoPoint value) point,
    required TResult Function(GeoLinestring value) linestring,
    required TResult Function(GeoPolygon value) polygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
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
      _$GeoGeometryCopyWithImpl<$Res>;
  $Res call({Color randomColor});
}

/// @nodoc
class _$GeoGeometryCopyWithImpl<$Res> implements $GeoGeometryCopyWith<$Res> {
  _$GeoGeometryCopyWithImpl(this._value, this._then);

  final GeoGeometry _value;
  // ignore: unused_field
  final $Res Function(GeoGeometry) _then;

  @override
  $Res call({
    Object? randomColor = freezed,
  }) {
    return _then(_value.copyWith(
      randomColor: randomColor == freezed
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class $GeoPointCopyWith<$Res> implements $GeoGeometryCopyWith<$Res> {
  factory $GeoPointCopyWith(GeoPoint value, $Res Function(GeoPoint) then) =
      _$GeoPointCopyWithImpl<$Res>;
  @override
  $Res call({LatLng point, Color randomColor});
}

/// @nodoc
class _$GeoPointCopyWithImpl<$Res> extends _$GeoGeometryCopyWithImpl<$Res>
    implements $GeoPointCopyWith<$Res> {
  _$GeoPointCopyWithImpl(GeoPoint _value, $Res Function(GeoPoint) _then)
      : super(_value, (v) => _then(v as GeoPoint));

  @override
  GeoPoint get _value => super._value as GeoPoint;

  @override
  $Res call({
    Object? point = freezed,
    Object? randomColor = freezed,
  }) {
    return _then(GeoPoint(
      point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as LatLng,
      randomColor == freezed
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
            other is GeoPoint &&
            const DeepCollectionEquality().equals(other.point, point) &&
            const DeepCollectionEquality()
                .equals(other.randomColor, randomColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(point),
      const DeepCollectionEquality().hash(randomColor));

  @JsonKey(ignore: true)
  @override
  $GeoPointCopyWith<GeoPoint> get copyWith =>
      _$GeoPointCopyWithImpl<GeoPoint>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng point, Color randomColor) point,
    required TResult Function(List<LatLng> points, Color randomColor)
        linestring,
    required TResult Function(List<LatLng> points, Color randomColor) polygon,
  }) {
    return point(this.point, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
  }) {
    return point?.call(this.point, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
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
  }) {
    return point(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
  }) {
    return point?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
    required TResult orElse(),
  }) {
    if (point != null) {
      return point(this);
    }
    return orElse();
  }
}

abstract class GeoPoint extends GeoGeometry {
  factory GeoPoint(LatLng point, Color randomColor) = _$GeoPoint;
  GeoPoint._() : super._();

  LatLng get point;
  @override
  Color get randomColor;
  @override
  @JsonKey(ignore: true)
  $GeoPointCopyWith<GeoPoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoLinestringCopyWith<$Res>
    implements $GeoGeometryCopyWith<$Res> {
  factory $GeoLinestringCopyWith(
          GeoLinestring value, $Res Function(GeoLinestring) then) =
      _$GeoLinestringCopyWithImpl<$Res>;
  @override
  $Res call({List<LatLng> points, Color randomColor});
}

/// @nodoc
class _$GeoLinestringCopyWithImpl<$Res> extends _$GeoGeometryCopyWithImpl<$Res>
    implements $GeoLinestringCopyWith<$Res> {
  _$GeoLinestringCopyWithImpl(
      GeoLinestring _value, $Res Function(GeoLinestring) _then)
      : super(_value, (v) => _then(v as GeoLinestring));

  @override
  GeoLinestring get _value => super._value as GeoLinestring;

  @override
  $Res call({
    Object? points = freezed,
    Object? randomColor = freezed,
  }) {
    return _then(GeoLinestring(
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      randomColor == freezed
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$GeoLinestring extends GeoLinestring {
  _$GeoLinestring(this.points, this.randomColor) : super._();

  @override
  final List<LatLng> points;
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
            other is GeoLinestring &&
            const DeepCollectionEquality().equals(other.points, points) &&
            const DeepCollectionEquality()
                .equals(other.randomColor, randomColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(points),
      const DeepCollectionEquality().hash(randomColor));

  @JsonKey(ignore: true)
  @override
  $GeoLinestringCopyWith<GeoLinestring> get copyWith =>
      _$GeoLinestringCopyWithImpl<GeoLinestring>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng point, Color randomColor) point,
    required TResult Function(List<LatLng> points, Color randomColor)
        linestring,
    required TResult Function(List<LatLng> points, Color randomColor) polygon,
  }) {
    return linestring(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
  }) {
    return linestring?.call(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
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
  }) {
    return linestring(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
  }) {
    return linestring?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
    required TResult orElse(),
  }) {
    if (linestring != null) {
      return linestring(this);
    }
    return orElse();
  }
}

abstract class GeoLinestring extends GeoGeometry {
  factory GeoLinestring(List<LatLng> points, Color randomColor) =
      _$GeoLinestring;
  GeoLinestring._() : super._();

  List<LatLng> get points;
  @override
  Color get randomColor;
  @override
  @JsonKey(ignore: true)
  $GeoLinestringCopyWith<GeoLinestring> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeoPolygonCopyWith<$Res> implements $GeoGeometryCopyWith<$Res> {
  factory $GeoPolygonCopyWith(
          GeoPolygon value, $Res Function(GeoPolygon) then) =
      _$GeoPolygonCopyWithImpl<$Res>;
  @override
  $Res call({List<LatLng> points, Color randomColor});
}

/// @nodoc
class _$GeoPolygonCopyWithImpl<$Res> extends _$GeoGeometryCopyWithImpl<$Res>
    implements $GeoPolygonCopyWith<$Res> {
  _$GeoPolygonCopyWithImpl(GeoPolygon _value, $Res Function(GeoPolygon) _then)
      : super(_value, (v) => _then(v as GeoPolygon));

  @override
  GeoPolygon get _value => super._value as GeoPolygon;

  @override
  $Res call({
    Object? points = freezed,
    Object? randomColor = freezed,
  }) {
    return _then(GeoPolygon(
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      randomColor == freezed
          ? _value.randomColor
          : randomColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$GeoPolygon extends GeoPolygon {
  _$GeoPolygon(this.points, this.randomColor) : super._();

  @override
  final List<LatLng> points;
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
            other is GeoPolygon &&
            const DeepCollectionEquality().equals(other.points, points) &&
            const DeepCollectionEquality()
                .equals(other.randomColor, randomColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(points),
      const DeepCollectionEquality().hash(randomColor));

  @JsonKey(ignore: true)
  @override
  $GeoPolygonCopyWith<GeoPolygon> get copyWith =>
      _$GeoPolygonCopyWithImpl<GeoPolygon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng point, Color randomColor) point,
    required TResult Function(List<LatLng> points, Color randomColor)
        linestring,
    required TResult Function(List<LatLng> points, Color randomColor) polygon,
  }) {
    return polygon(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
  }) {
    return polygon?.call(points, randomColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng point, Color randomColor)? point,
    TResult Function(List<LatLng> points, Color randomColor)? linestring,
    TResult Function(List<LatLng> points, Color randomColor)? polygon,
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
  }) {
    return polygon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
  }) {
    return polygon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GeoPoint value)? point,
    TResult Function(GeoLinestring value)? linestring,
    TResult Function(GeoPolygon value)? polygon,
    required TResult orElse(),
  }) {
    if (polygon != null) {
      return polygon(this);
    }
    return orElse();
  }
}

abstract class GeoPolygon extends GeoGeometry {
  factory GeoPolygon(List<LatLng> points, Color randomColor) = _$GeoPolygon;
  GeoPolygon._() : super._();

  List<LatLng> get points;
  @override
  Color get randomColor;
  @override
  @JsonKey(ignore: true)
  $GeoPolygonCopyWith<GeoPolygon> get copyWith =>
      throw _privateConstructorUsedError;
}
