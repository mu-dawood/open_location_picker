// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  int? get osmId => throw _privateConstructorUsedError;

  /// search rank of the object
  int? get placeRank => throw _privateConstructorUsedError;

  ///key of the main OSM tag
  String get category => throw _privateConstructorUsedError;

  /// value of the main OSM tag
  String get type => throw _privateConstructorUsedError;

  /// computed importance rank
  double? get importance => throw _privateConstructorUsedError;
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
      int? osmId,
      int? placeRank,
      String category,
      String type,
      double? importance,
      String addressType,
      String name,
      String displayName,
      Address address,
      Map<String, dynamic> extratags,
      Map<String, dynamic> namedetails,
      LatLngBounds? boundingBox,
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
    Object? addressType = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? address = freezed,
    Object? extratags = freezed,
    Object? namedetails = freezed,
    Object? boundingBox = freezed,
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
              as int?,
      placeRank: placeRank == freezed
          ? _value.placeRank
          : placeRank // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as double?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
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
      boundingBox: boundingBox == freezed
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
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
abstract class _$$_FormattedLocationCopyWith<$Res>
    implements $FormattedLocationCopyWith<$Res> {
  factory _$$_FormattedLocationCopyWith(_$_FormattedLocation value,
          $Res Function(_$_FormattedLocation) then) =
      __$$_FormattedLocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String placeId,
      double lat,
      double lon,
      String licence,
      String osmType,
      String? icon,
      int? osmId,
      int? placeRank,
      String category,
      String type,
      double? importance,
      String addressType,
      String name,
      String displayName,
      Address address,
      Map<String, dynamic> extratags,
      Map<String, dynamic> namedetails,
      LatLngBounds? boundingBox,
      GeoGeometry geojson,
      Map<String, String> names});

  @override
  $GeoGeometryCopyWith<$Res> get geojson;
}

/// @nodoc
class __$$_FormattedLocationCopyWithImpl<$Res>
    extends _$FormattedLocationCopyWithImpl<$Res>
    implements _$$_FormattedLocationCopyWith<$Res> {
  __$$_FormattedLocationCopyWithImpl(
      _$_FormattedLocation _value, $Res Function(_$_FormattedLocation) _then)
      : super(_value, (v) => _then(v as _$_FormattedLocation));

  @override
  _$_FormattedLocation get _value => super._value as _$_FormattedLocation;

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
    Object? addressType = freezed,
    Object? name = freezed,
    Object? displayName = freezed,
    Object? address = freezed,
    Object? extratags = freezed,
    Object? namedetails = freezed,
    Object? boundingBox = freezed,
    Object? geojson = freezed,
    Object? names = freezed,
  }) {
    return _then(_$_FormattedLocation(
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
              as int?,
      placeRank: placeRank == freezed
          ? _value.placeRank
          : placeRank // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as double?,
      addressType: addressType == freezed
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
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
          ? _value._extratags
          : extratags // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      namedetails: namedetails == freezed
          ? _value._namedetails
          : namedetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      boundingBox: boundingBox == freezed
          ? _value.boundingBox
          : boundingBox // ignore: cast_nullable_to_non_nullable
              as LatLngBounds?,
      geojson: geojson == freezed
          ? _value.geojson
          : geojson // ignore: cast_nullable_to_non_nullable
              as GeoGeometry,
      names: names == freezed
          ? _value._names
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
      this.licence = '',
      this.osmType = '',
      this.icon,
      this.osmId,
      this.placeRank,
      this.category = '',
      this.type = '',
      this.importance,
      this.addressType = '',
      this.name = '',
      this.displayName = '',
      this.address = const Address(),
      final Map<String, dynamic> extratags = const {},
      final Map<String, dynamic> namedetails = const {},
      this.boundingBox,
      required this.geojson,
      final Map<String, String> names = const {}})
      : _extratags = extratags,
        _namedetails = namedetails,
        _names = names,
        super._();

  ///reference to the Nominatim internal database ID
  @override
  @JsonKey()
  final String placeId;

  /// latitude of the centroid of the object
  @override
  final double lat;

  /// longitude of the centroid of the object
  @override
  final double lon;
  @override
  @JsonKey()
  final String licence;

  ///reference to the OSM object
  @override
  @JsonKey()
  final String osmType;
  @override
  final String? icon;

  /// reference to the OSM object
  @override
  final int? osmId;

  /// search rank of the object
  @override
  final int? placeRank;

  ///key of the main OSM tag
  @override
  @JsonKey()
  final String category;

  /// value of the main OSM tag
  @override
  @JsonKey()
  final String type;

  /// computed importance rank
  @override
  final double? importance;
  @override
  @JsonKey()
  final String addressType;
  @override
  @JsonKey()
  final String name;

  ///full comma-separated address
  @override
  @JsonKey()
  final String displayName;

  /// dictionary of address details
  @override
  @JsonKey()
  final Address address;

  /// dictionary with additional useful tags like website or max speed
  final Map<String, dynamic> _extratags;

  /// dictionary with additional useful tags like website or max speed
  @override
  @JsonKey()
  Map<String, dynamic> get extratags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extratags);
  }

  /// dictionary with full list of available names including ref etc
  final Map<String, dynamic> _namedetails;

  /// dictionary with full list of available names including ref etc
  @override
  @JsonKey()
  Map<String, dynamic> get namedetails {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_namedetails);
  }

  ///area of corner coordinates
  @override
  final LatLngBounds? boundingBox;

  /// GeoBounds of object
  @override
  final GeoGeometry geojson;
  final Map<String, String> _names;
  @override
  @JsonKey()
  Map<String, String> get names {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_names);
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormattedLocation &&
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
                .equals(other.addressType, addressType) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other._extratags, _extratags) &&
            const DeepCollectionEquality()
                .equals(other._namedetails, _namedetails) &&
            const DeepCollectionEquality()
                .equals(other.boundingBox, boundingBox) &&
            const DeepCollectionEquality().equals(other.geojson, geojson) &&
            const DeepCollectionEquality().equals(other._names, _names));
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
        const DeepCollectionEquality().hash(addressType),
        const DeepCollectionEquality().hash(name),
        const DeepCollectionEquality().hash(displayName),
        const DeepCollectionEquality().hash(address),
        const DeepCollectionEquality().hash(_extratags),
        const DeepCollectionEquality().hash(_namedetails),
        const DeepCollectionEquality().hash(boundingBox),
        const DeepCollectionEquality().hash(geojson),
        const DeepCollectionEquality().hash(_names)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_FormattedLocationCopyWith<_$_FormattedLocation> get copyWith =>
      __$$_FormattedLocationCopyWithImpl<_$_FormattedLocation>(
          this, _$identity);
}

abstract class _FormattedLocation extends FormattedLocation {
  const factory _FormattedLocation(
      {final String placeId,
      required final double lat,
      required final double lon,
      final String licence,
      final String osmType,
      final String? icon,
      final int? osmId,
      final int? placeRank,
      final String category,
      final String type,
      final double? importance,
      final String addressType,
      final String name,
      final String displayName,
      final Address address,
      final Map<String, dynamic> extratags,
      final Map<String, dynamic> namedetails,
      final LatLngBounds? boundingBox,
      required final GeoGeometry geojson,
      final Map<String, String> names}) = _$_FormattedLocation;
  const _FormattedLocation._() : super._();

  @override

  ///reference to the Nominatim internal database ID
  String get placeId => throw _privateConstructorUsedError;
  @override

  /// latitude of the centroid of the object
  double get lat => throw _privateConstructorUsedError;
  @override

  /// longitude of the centroid of the object
  double get lon => throw _privateConstructorUsedError;
  @override
  String get licence => throw _privateConstructorUsedError;
  @override

  ///reference to the OSM object
  String get osmType => throw _privateConstructorUsedError;
  @override
  String? get icon => throw _privateConstructorUsedError;
  @override

  /// reference to the OSM object
  int? get osmId => throw _privateConstructorUsedError;
  @override

  /// search rank of the object
  int? get placeRank => throw _privateConstructorUsedError;
  @override

  ///key of the main OSM tag
  String get category => throw _privateConstructorUsedError;
  @override

  /// value of the main OSM tag
  String get type => throw _privateConstructorUsedError;
  @override

  /// computed importance rank
  double? get importance => throw _privateConstructorUsedError;
  @override
  String get addressType => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override

  ///full comma-separated address
  String get displayName => throw _privateConstructorUsedError;
  @override

  /// dictionary of address details
  Address get address => throw _privateConstructorUsedError;
  @override

  /// dictionary with additional useful tags like website or max speed
  Map<String, dynamic> get extratags => throw _privateConstructorUsedError;
  @override

  /// dictionary with full list of available names including ref etc
  Map<String, dynamic> get namedetails => throw _privateConstructorUsedError;
  @override

  ///area of corner coordinates
  LatLngBounds? get boundingBox => throw _privateConstructorUsedError;
  @override

  /// GeoBounds of object
  GeoGeometry get geojson => throw _privateConstructorUsedError;
  @override
  Map<String, String> get names => throw _privateConstructorUsedError;
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
abstract class _$$GeoPointCopyWith<$Res> implements $GeoGeometryCopyWith<$Res> {
  factory _$$GeoPointCopyWith(
          _$GeoPoint value, $Res Function(_$GeoPoint) then) =
      __$$GeoPointCopyWithImpl<$Res>;
  @override
  $Res call({LatLng point, Color randomColor});
}

/// @nodoc
class __$$GeoPointCopyWithImpl<$Res> extends _$GeoGeometryCopyWithImpl<$Res>
    implements _$$GeoPointCopyWith<$Res> {
  __$$GeoPointCopyWithImpl(_$GeoPoint _value, $Res Function(_$GeoPoint) _then)
      : super(_value, (v) => _then(v as _$GeoPoint));

  @override
  _$GeoPoint get _value => super._value as _$GeoPoint;

  @override
  $Res call({
    Object? point = freezed,
    Object? randomColor = freezed,
  }) {
    return _then(_$GeoPoint(
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
            other is _$GeoPoint &&
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
  _$$GeoPointCopyWith<_$GeoPoint> get copyWith =>
      __$$GeoPointCopyWithImpl<_$GeoPoint>(this, _$identity);

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
  factory GeoPoint(final LatLng point, final Color randomColor) = _$GeoPoint;
  GeoPoint._() : super._();

  LatLng get point => throw _privateConstructorUsedError;
  @override
  Color get randomColor => throw _privateConstructorUsedError;
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
  $Res call({List<LatLng> points, Color randomColor});
}

/// @nodoc
class __$$GeoLinestringCopyWithImpl<$Res>
    extends _$GeoGeometryCopyWithImpl<$Res>
    implements _$$GeoLinestringCopyWith<$Res> {
  __$$GeoLinestringCopyWithImpl(
      _$GeoLinestring _value, $Res Function(_$GeoLinestring) _then)
      : super(_value, (v) => _then(v as _$GeoLinestring));

  @override
  _$GeoLinestring get _value => super._value as _$GeoLinestring;

  @override
  $Res call({
    Object? points = freezed,
    Object? randomColor = freezed,
  }) {
    return _then(_$GeoLinestring(
      points == freezed
          ? _value._points
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
  _$GeoLinestring(final List<LatLng> points, this.randomColor)
      : _points = points,
        super._();

  final List<LatLng> _points;
  @override
  List<LatLng> get points {
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
            const DeepCollectionEquality()
                .equals(other.randomColor, randomColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_points),
      const DeepCollectionEquality().hash(randomColor));

  @JsonKey(ignore: true)
  @override
  _$$GeoLinestringCopyWith<_$GeoLinestring> get copyWith =>
      __$$GeoLinestringCopyWithImpl<_$GeoLinestring>(this, _$identity);

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
  factory GeoLinestring(final List<LatLng> points, final Color randomColor) =
      _$GeoLinestring;
  GeoLinestring._() : super._();

  List<LatLng> get points => throw _privateConstructorUsedError;
  @override
  Color get randomColor => throw _privateConstructorUsedError;
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
  $Res call({List<LatLng> points, Color randomColor});
}

/// @nodoc
class __$$GeoPolygonCopyWithImpl<$Res> extends _$GeoGeometryCopyWithImpl<$Res>
    implements _$$GeoPolygonCopyWith<$Res> {
  __$$GeoPolygonCopyWithImpl(
      _$GeoPolygon _value, $Res Function(_$GeoPolygon) _then)
      : super(_value, (v) => _then(v as _$GeoPolygon));

  @override
  _$GeoPolygon get _value => super._value as _$GeoPolygon;

  @override
  $Res call({
    Object? points = freezed,
    Object? randomColor = freezed,
  }) {
    return _then(_$GeoPolygon(
      points == freezed
          ? _value._points
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
  _$GeoPolygon(final List<LatLng> points, this.randomColor)
      : _points = points,
        super._();

  final List<LatLng> _points;
  @override
  List<LatLng> get points {
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
            const DeepCollectionEquality()
                .equals(other.randomColor, randomColor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_points),
      const DeepCollectionEquality().hash(randomColor));

  @JsonKey(ignore: true)
  @override
  _$$GeoPolygonCopyWith<_$GeoPolygon> get copyWith =>
      __$$GeoPolygonCopyWithImpl<_$GeoPolygon>(this, _$identity);

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
  factory GeoPolygon(final List<LatLng> points, final Color randomColor) =
      _$GeoPolygon;
  GeoPolygon._() : super._();

  List<LatLng> get points => throw _privateConstructorUsedError;
  @override
  Color get randomColor => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$GeoPolygonCopyWith<_$GeoPolygon> get copyWith =>
      throw _privateConstructorUsedError;
}
