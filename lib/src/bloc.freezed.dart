// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OpenMapStateTearOff {
  const _$OpenMapStateTearOff();

  _Selected selected(SelectedLocation selected) {
    return _Selected(
      selected,
    );
  }

  _Reversing reversing(SelectedLocation selected, LatLng reversing) {
    return _Reversing(
      selected,
      reversing,
    );
  }

  _Searching searching(
      {required SelectedLocation selected,
      required String query,
      required List<FormattedLocation> oldResults}) {
    return _Searching(
      selected: selected,
      query: query,
      oldResults: oldResults,
    );
  }

  _Results results(
      {required SelectedLocation selected,
      required String query,
      required List<FormattedLocation> searchResults}) {
    return _Results(
      selected: selected,
      query: query,
      searchResults: searchResults,
    );
  }
}

/// @nodoc
const $OpenMapState = _$OpenMapStateTearOff();

/// @nodoc
mixin _$OpenMapState {
  SelectedLocation get selected => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedLocation selected) selected,
    required TResult Function(SelectedLocation selected, LatLng reversing)
        reversing,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)
        searching,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)
        results,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Selected value) selected,
    required TResult Function(_Reversing value) reversing,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Results value) results,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenMapStateCopyWith<OpenMapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenMapStateCopyWith<$Res> {
  factory $OpenMapStateCopyWith(
          OpenMapState value, $Res Function(OpenMapState) then) =
      _$OpenMapStateCopyWithImpl<$Res>;
  $Res call({SelectedLocation selected});

  $SelectedLocationCopyWith<$Res> get selected;
}

/// @nodoc
class _$OpenMapStateCopyWithImpl<$Res> implements $OpenMapStateCopyWith<$Res> {
  _$OpenMapStateCopyWithImpl(this._value, this._then);

  final OpenMapState _value;
  // ignore: unused_field
  final $Res Function(OpenMapState) _then;

  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_value.copyWith(
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as SelectedLocation,
    ));
  }

  @override
  $SelectedLocationCopyWith<$Res> get selected {
    return $SelectedLocationCopyWith<$Res>(_value.selected, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc
abstract class _$SelectedCopyWith<$Res> implements $OpenMapStateCopyWith<$Res> {
  factory _$SelectedCopyWith(_Selected value, $Res Function(_Selected) then) =
      __$SelectedCopyWithImpl<$Res>;
  @override
  $Res call({SelectedLocation selected});

  @override
  $SelectedLocationCopyWith<$Res> get selected;
}

/// @nodoc
class __$SelectedCopyWithImpl<$Res> extends _$OpenMapStateCopyWithImpl<$Res>
    implements _$SelectedCopyWith<$Res> {
  __$SelectedCopyWithImpl(_Selected _value, $Res Function(_Selected) _then)
      : super(_value, (v) => _then(v as _Selected));

  @override
  _Selected get _value => super._value as _Selected;

  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_Selected(
      selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as SelectedLocation,
    ));
  }
}

/// @nodoc

class _$_Selected implements _Selected {
  const _$_Selected(this.selected);

  @override
  final SelectedLocation selected;

  @override
  String toString() {
    return 'OpenMapState.selected(selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Selected &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$SelectedCopyWith<_Selected> get copyWith =>
      __$SelectedCopyWithImpl<_Selected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedLocation selected) selected,
    required TResult Function(SelectedLocation selected, LatLng reversing)
        reversing,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)
        searching,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)
        results,
  }) {
    return selected(this.selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
  }) {
    return selected?.call(this.selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this.selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Selected value) selected,
    required TResult Function(_Reversing value) reversing,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Results value) results,
  }) {
    return selected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
  }) {
    return selected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
    required TResult orElse(),
  }) {
    if (selected != null) {
      return selected(this);
    }
    return orElse();
  }
}

abstract class _Selected implements OpenMapState {
  const factory _Selected(SelectedLocation selected) = _$_Selected;

  @override
  SelectedLocation get selected;
  @override
  @JsonKey(ignore: true)
  _$SelectedCopyWith<_Selected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReversingCopyWith<$Res>
    implements $OpenMapStateCopyWith<$Res> {
  factory _$ReversingCopyWith(
          _Reversing value, $Res Function(_Reversing) then) =
      __$ReversingCopyWithImpl<$Res>;
  @override
  $Res call({SelectedLocation selected, LatLng reversing});

  @override
  $SelectedLocationCopyWith<$Res> get selected;
}

/// @nodoc
class __$ReversingCopyWithImpl<$Res> extends _$OpenMapStateCopyWithImpl<$Res>
    implements _$ReversingCopyWith<$Res> {
  __$ReversingCopyWithImpl(_Reversing _value, $Res Function(_Reversing) _then)
      : super(_value, (v) => _then(v as _Reversing));

  @override
  _Reversing get _value => super._value as _Reversing;

  @override
  $Res call({
    Object? selected = freezed,
    Object? reversing = freezed,
  }) {
    return _then(_Reversing(
      selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as SelectedLocation,
      reversing == freezed
          ? _value.reversing
          : reversing // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_Reversing implements _Reversing {
  const _$_Reversing(this.selected, this.reversing);

  @override
  final SelectedLocation selected;
  @override
  final LatLng reversing;

  @override
  String toString() {
    return 'OpenMapState.reversing(selected: $selected, reversing: $reversing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reversing &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.reversing, reversing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(reversing));

  @JsonKey(ignore: true)
  @override
  _$ReversingCopyWith<_Reversing> get copyWith =>
      __$ReversingCopyWithImpl<_Reversing>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedLocation selected) selected,
    required TResult Function(SelectedLocation selected, LatLng reversing)
        reversing,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)
        searching,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)
        results,
  }) {
    return reversing(this.selected, this.reversing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
  }) {
    return reversing?.call(this.selected, this.reversing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
    required TResult orElse(),
  }) {
    if (reversing != null) {
      return reversing(this.selected, this.reversing);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Selected value) selected,
    required TResult Function(_Reversing value) reversing,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Results value) results,
  }) {
    return reversing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
  }) {
    return reversing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
    required TResult orElse(),
  }) {
    if (reversing != null) {
      return reversing(this);
    }
    return orElse();
  }
}

abstract class _Reversing implements OpenMapState {
  const factory _Reversing(SelectedLocation selected, LatLng reversing) =
      _$_Reversing;

  @override
  SelectedLocation get selected;
  LatLng get reversing;
  @override
  @JsonKey(ignore: true)
  _$ReversingCopyWith<_Reversing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchingCopyWith<$Res>
    implements $OpenMapStateCopyWith<$Res> {
  factory _$SearchingCopyWith(
          _Searching value, $Res Function(_Searching) then) =
      __$SearchingCopyWithImpl<$Res>;
  @override
  $Res call(
      {SelectedLocation selected,
      String query,
      List<FormattedLocation> oldResults});

  @override
  $SelectedLocationCopyWith<$Res> get selected;
}

/// @nodoc
class __$SearchingCopyWithImpl<$Res> extends _$OpenMapStateCopyWithImpl<$Res>
    implements _$SearchingCopyWith<$Res> {
  __$SearchingCopyWithImpl(_Searching _value, $Res Function(_Searching) _then)
      : super(_value, (v) => _then(v as _Searching));

  @override
  _Searching get _value => super._value as _Searching;

  @override
  $Res call({
    Object? selected = freezed,
    Object? query = freezed,
    Object? oldResults = freezed,
  }) {
    return _then(_Searching(
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as SelectedLocation,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      oldResults: oldResults == freezed
          ? _value.oldResults
          : oldResults // ignore: cast_nullable_to_non_nullable
              as List<FormattedLocation>,
    ));
  }
}

/// @nodoc

class _$_Searching implements _Searching {
  const _$_Searching(
      {required this.selected, required this.query, required this.oldResults});

  @override
  final SelectedLocation selected;
  @override
  final String query;
  @override
  final List<FormattedLocation> oldResults;

  @override
  String toString() {
    return 'OpenMapState.searching(selected: $selected, query: $query, oldResults: $oldResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Searching &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other.oldResults, oldResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(oldResults));

  @JsonKey(ignore: true)
  @override
  _$SearchingCopyWith<_Searching> get copyWith =>
      __$SearchingCopyWithImpl<_Searching>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedLocation selected) selected,
    required TResult Function(SelectedLocation selected, LatLng reversing)
        reversing,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)
        searching,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)
        results,
  }) {
    return searching(this.selected, query, oldResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
  }) {
    return searching?.call(this.selected, query, oldResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this.selected, query, oldResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Selected value) selected,
    required TResult Function(_Reversing value) reversing,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Results value) results,
  }) {
    return searching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
  }) {
    return searching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
    required TResult orElse(),
  }) {
    if (searching != null) {
      return searching(this);
    }
    return orElse();
  }
}

abstract class _Searching implements OpenMapState {
  const factory _Searching(
      {required SelectedLocation selected,
      required String query,
      required List<FormattedLocation> oldResults}) = _$_Searching;

  @override
  SelectedLocation get selected;
  String get query;
  List<FormattedLocation> get oldResults;
  @override
  @JsonKey(ignore: true)
  _$SearchingCopyWith<_Searching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResultsCopyWith<$Res> implements $OpenMapStateCopyWith<$Res> {
  factory _$ResultsCopyWith(_Results value, $Res Function(_Results) then) =
      __$ResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {SelectedLocation selected,
      String query,
      List<FormattedLocation> searchResults});

  @override
  $SelectedLocationCopyWith<$Res> get selected;
}

/// @nodoc
class __$ResultsCopyWithImpl<$Res> extends _$OpenMapStateCopyWithImpl<$Res>
    implements _$ResultsCopyWith<$Res> {
  __$ResultsCopyWithImpl(_Results _value, $Res Function(_Results) _then)
      : super(_value, (v) => _then(v as _Results));

  @override
  _Results get _value => super._value as _Results;

  @override
  $Res call({
    Object? selected = freezed,
    Object? query = freezed,
    Object? searchResults = freezed,
  }) {
    return _then(_Results(
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as SelectedLocation,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<FormattedLocation>,
    ));
  }
}

/// @nodoc

class _$_Results implements _Results {
  const _$_Results(
      {required this.selected,
      required this.query,
      required this.searchResults});

  @override
  final SelectedLocation selected;
  @override
  final String query;
  @override
  final List<FormattedLocation> searchResults;

  @override
  String toString() {
    return 'OpenMapState.results(selected: $selected, query: $query, searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Results &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other.searchResults, searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(searchResults));

  @JsonKey(ignore: true)
  @override
  _$ResultsCopyWith<_Results> get copyWith =>
      __$ResultsCopyWithImpl<_Results>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SelectedLocation selected) selected,
    required TResult Function(SelectedLocation selected, LatLng reversing)
        reversing,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)
        searching,
    required TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)
        results,
  }) {
    return results(this.selected, query, searchResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
  }) {
    return results?.call(this.selected, query, searchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SelectedLocation selected)? selected,
    TResult Function(SelectedLocation selected, LatLng reversing)? reversing,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> oldResults)?
        searching,
    TResult Function(SelectedLocation selected, String query,
            List<FormattedLocation> searchResults)?
        results,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(this.selected, query, searchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Selected value) selected,
    required TResult Function(_Reversing value) reversing,
    required TResult Function(_Searching value) searching,
    required TResult Function(_Results value) results,
  }) {
    return results(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
  }) {
    return results?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Selected value)? selected,
    TResult Function(_Reversing value)? reversing,
    TResult Function(_Searching value)? searching,
    TResult Function(_Results value)? results,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(this);
    }
    return orElse();
  }
}

abstract class _Results implements OpenMapState {
  const factory _Results(
      {required SelectedLocation selected,
      required String query,
      required List<FormattedLocation> searchResults}) = _$_Results;

  @override
  SelectedLocation get selected;
  String get query;
  List<FormattedLocation> get searchResults;
  @override
  @JsonKey(ignore: true)
  _$ResultsCopyWith<_Results> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SelectedLocationTearOff {
  const _$SelectedLocationTearOff();

  _Single single(FormattedLocation? selected) {
    return _Single(
      selected,
    );
  }

  _Multi multi(List<FormattedLocation> selected) {
    return _Multi(
      selected,
    );
  }
}

/// @nodoc
const $SelectedLocation = _$SelectedLocationTearOff();

/// @nodoc
mixin _$SelectedLocation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormattedLocation? selected) single,
    required TResult Function(List<FormattedLocation> selected) multi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FormattedLocation? selected)? single,
    TResult Function(List<FormattedLocation> selected)? multi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormattedLocation? selected)? single,
    TResult Function(List<FormattedLocation> selected)? multi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Single value) single,
    required TResult Function(_Multi value) multi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Single value)? single,
    TResult Function(_Multi value)? multi,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Single value)? single,
    TResult Function(_Multi value)? multi,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedLocationCopyWith<$Res> {
  factory $SelectedLocationCopyWith(
          SelectedLocation value, $Res Function(SelectedLocation) then) =
      _$SelectedLocationCopyWithImpl<$Res>;
}

/// @nodoc
class _$SelectedLocationCopyWithImpl<$Res>
    implements $SelectedLocationCopyWith<$Res> {
  _$SelectedLocationCopyWithImpl(this._value, this._then);

  final SelectedLocation _value;
  // ignore: unused_field
  final $Res Function(SelectedLocation) _then;
}

/// @nodoc
abstract class _$SingleCopyWith<$Res> {
  factory _$SingleCopyWith(_Single value, $Res Function(_Single) then) =
      __$SingleCopyWithImpl<$Res>;
  $Res call({FormattedLocation? selected});

  $FormattedLocationCopyWith<$Res>? get selected;
}

/// @nodoc
class __$SingleCopyWithImpl<$Res> extends _$SelectedLocationCopyWithImpl<$Res>
    implements _$SingleCopyWith<$Res> {
  __$SingleCopyWithImpl(_Single _value, $Res Function(_Single) _then)
      : super(_value, (v) => _then(v as _Single));

  @override
  _Single get _value => super._value as _Single;

  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_Single(
      selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as FormattedLocation?,
    ));
  }

  @override
  $FormattedLocationCopyWith<$Res>? get selected {
    if (_value.selected == null) {
      return null;
    }

    return $FormattedLocationCopyWith<$Res>(_value.selected!, (value) {
      return _then(_value.copyWith(selected: value));
    });
  }
}

/// @nodoc

class _$_Single implements _Single {
  const _$_Single(this.selected);

  @override
  final FormattedLocation? selected;

  @override
  String toString() {
    return 'SelectedLocation.single(selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Single &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$SingleCopyWith<_Single> get copyWith =>
      __$SingleCopyWithImpl<_Single>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormattedLocation? selected) single,
    required TResult Function(List<FormattedLocation> selected) multi,
  }) {
    return single(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FormattedLocation? selected)? single,
    TResult Function(List<FormattedLocation> selected)? multi,
  }) {
    return single?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormattedLocation? selected)? single,
    TResult Function(List<FormattedLocation> selected)? multi,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Single value) single,
    required TResult Function(_Multi value) multi,
  }) {
    return single(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Single value)? single,
    TResult Function(_Multi value)? multi,
  }) {
    return single?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Single value)? single,
    TResult Function(_Multi value)? multi,
    required TResult orElse(),
  }) {
    if (single != null) {
      return single(this);
    }
    return orElse();
  }
}

abstract class _Single implements SelectedLocation {
  const factory _Single(FormattedLocation? selected) = _$_Single;

  FormattedLocation? get selected;
  @JsonKey(ignore: true)
  _$SingleCopyWith<_Single> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MultiCopyWith<$Res> {
  factory _$MultiCopyWith(_Multi value, $Res Function(_Multi) then) =
      __$MultiCopyWithImpl<$Res>;
  $Res call({List<FormattedLocation> selected});
}

/// @nodoc
class __$MultiCopyWithImpl<$Res> extends _$SelectedLocationCopyWithImpl<$Res>
    implements _$MultiCopyWith<$Res> {
  __$MultiCopyWithImpl(_Multi _value, $Res Function(_Multi) _then)
      : super(_value, (v) => _then(v as _Multi));

  @override
  _Multi get _value => super._value as _Multi;

  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_Multi(
      selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<FormattedLocation>,
    ));
  }
}

/// @nodoc

class _$_Multi implements _Multi {
  const _$_Multi(this.selected);

  @override
  final List<FormattedLocation> selected;

  @override
  String toString() {
    return 'SelectedLocation.multi(selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Multi &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$MultiCopyWith<_Multi> get copyWith =>
      __$MultiCopyWithImpl<_Multi>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormattedLocation? selected) single,
    required TResult Function(List<FormattedLocation> selected) multi,
  }) {
    return multi(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(FormattedLocation? selected)? single,
    TResult Function(List<FormattedLocation> selected)? multi,
  }) {
    return multi?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormattedLocation? selected)? single,
    TResult Function(List<FormattedLocation> selected)? multi,
    required TResult orElse(),
  }) {
    if (multi != null) {
      return multi(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Single value) single,
    required TResult Function(_Multi value) multi,
  }) {
    return multi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Single value)? single,
    TResult Function(_Multi value)? multi,
  }) {
    return multi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Single value)? single,
    TResult Function(_Multi value)? multi,
    required TResult orElse(),
  }) {
    if (multi != null) {
      return multi(this);
    }
    return orElse();
  }
}

abstract class _Multi implements SelectedLocation {
  const factory _Multi(List<FormattedLocation> selected) = _$_Multi;

  List<FormattedLocation> get selected;
  @JsonKey(ignore: true)
  _$MultiCopyWith<_Multi> get copyWith => throw _privateConstructorUsedError;
}
