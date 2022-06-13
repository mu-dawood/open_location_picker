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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_SelectedCopyWith<$Res>
    implements $OpenMapStateCopyWith<$Res> {
  factory _$$_SelectedCopyWith(
          _$_Selected value, $Res Function(_$_Selected) then) =
      __$$_SelectedCopyWithImpl<$Res>;
  @override
  $Res call({SelectedLocation selected});

  @override
  $SelectedLocationCopyWith<$Res> get selected;
}

/// @nodoc
class __$$_SelectedCopyWithImpl<$Res> extends _$OpenMapStateCopyWithImpl<$Res>
    implements _$$_SelectedCopyWith<$Res> {
  __$$_SelectedCopyWithImpl(
      _$_Selected _value, $Res Function(_$_Selected) _then)
      : super(_value, (v) => _then(v as _$_Selected));

  @override
  _$_Selected get _value => super._value as _$_Selected;

  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$_Selected(
      selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as SelectedLocation,
    ));
  }
}

/// @nodoc

class _$_Selected with DiagnosticableTreeMixin implements _Selected {
  const _$_Selected(this.selected);

  @override
  final SelectedLocation selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenMapState.selected(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenMapState.selected'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Selected &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      __$$_SelectedCopyWithImpl<_$_Selected>(this, _$identity);

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
  const factory _Selected(final SelectedLocation selected) = _$_Selected;

  @override
  SelectedLocation get selected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedCopyWith<_$_Selected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReversingCopyWith<$Res>
    implements $OpenMapStateCopyWith<$Res> {
  factory _$$_ReversingCopyWith(
          _$_Reversing value, $Res Function(_$_Reversing) then) =
      __$$_ReversingCopyWithImpl<$Res>;
  @override
  $Res call({SelectedLocation selected, LatLng reversing});

  @override
  $SelectedLocationCopyWith<$Res> get selected;
}

/// @nodoc
class __$$_ReversingCopyWithImpl<$Res> extends _$OpenMapStateCopyWithImpl<$Res>
    implements _$$_ReversingCopyWith<$Res> {
  __$$_ReversingCopyWithImpl(
      _$_Reversing _value, $Res Function(_$_Reversing) _then)
      : super(_value, (v) => _then(v as _$_Reversing));

  @override
  _$_Reversing get _value => super._value as _$_Reversing;

  @override
  $Res call({
    Object? selected = freezed,
    Object? reversing = freezed,
  }) {
    return _then(_$_Reversing(
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

class _$_Reversing with DiagnosticableTreeMixin implements _Reversing {
  const _$_Reversing(this.selected, this.reversing);

  @override
  final SelectedLocation selected;
  @override
  final LatLng reversing;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenMapState.reversing(selected: $selected, reversing: $reversing)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenMapState.reversing'))
      ..add(DiagnosticsProperty('selected', selected))
      ..add(DiagnosticsProperty('reversing', reversing));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reversing &&
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
  _$$_ReversingCopyWith<_$_Reversing> get copyWith =>
      __$$_ReversingCopyWithImpl<_$_Reversing>(this, _$identity);

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
  const factory _Reversing(
      final SelectedLocation selected, final LatLng reversing) = _$_Reversing;

  @override
  SelectedLocation get selected => throw _privateConstructorUsedError;
  LatLng get reversing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReversingCopyWith<_$_Reversing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchingCopyWith<$Res>
    implements $OpenMapStateCopyWith<$Res> {
  factory _$$_SearchingCopyWith(
          _$_Searching value, $Res Function(_$_Searching) then) =
      __$$_SearchingCopyWithImpl<$Res>;
  @override
  $Res call(
      {SelectedLocation selected,
      String query,
      List<FormattedLocation> oldResults});

  @override
  $SelectedLocationCopyWith<$Res> get selected;
}

/// @nodoc
class __$$_SearchingCopyWithImpl<$Res> extends _$OpenMapStateCopyWithImpl<$Res>
    implements _$$_SearchingCopyWith<$Res> {
  __$$_SearchingCopyWithImpl(
      _$_Searching _value, $Res Function(_$_Searching) _then)
      : super(_value, (v) => _then(v as _$_Searching));

  @override
  _$_Searching get _value => super._value as _$_Searching;

  @override
  $Res call({
    Object? selected = freezed,
    Object? query = freezed,
    Object? oldResults = freezed,
  }) {
    return _then(_$_Searching(
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as SelectedLocation,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      oldResults: oldResults == freezed
          ? _value._oldResults
          : oldResults // ignore: cast_nullable_to_non_nullable
              as List<FormattedLocation>,
    ));
  }
}

/// @nodoc

class _$_Searching with DiagnosticableTreeMixin implements _Searching {
  const _$_Searching(
      {required this.selected,
      required this.query,
      required final List<FormattedLocation> oldResults})
      : _oldResults = oldResults;

  @override
  final SelectedLocation selected;
  @override
  final String query;
  final List<FormattedLocation> _oldResults;
  @override
  List<FormattedLocation> get oldResults {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oldResults);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenMapState.searching(selected: $selected, query: $query, oldResults: $oldResults)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenMapState.searching'))
      ..add(DiagnosticsProperty('selected', selected))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('oldResults', oldResults));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Searching &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other._oldResults, _oldResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(_oldResults));

  @JsonKey(ignore: true)
  @override
  _$$_SearchingCopyWith<_$_Searching> get copyWith =>
      __$$_SearchingCopyWithImpl<_$_Searching>(this, _$identity);

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
      {required final SelectedLocation selected,
      required final String query,
      required final List<FormattedLocation> oldResults}) = _$_Searching;

  @override
  SelectedLocation get selected => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<FormattedLocation> get oldResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchingCopyWith<_$_Searching> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResultsCopyWith<$Res>
    implements $OpenMapStateCopyWith<$Res> {
  factory _$$_ResultsCopyWith(
          _$_Results value, $Res Function(_$_Results) then) =
      __$$_ResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {SelectedLocation selected,
      String query,
      List<FormattedLocation> searchResults});

  @override
  $SelectedLocationCopyWith<$Res> get selected;
}

/// @nodoc
class __$$_ResultsCopyWithImpl<$Res> extends _$OpenMapStateCopyWithImpl<$Res>
    implements _$$_ResultsCopyWith<$Res> {
  __$$_ResultsCopyWithImpl(_$_Results _value, $Res Function(_$_Results) _then)
      : super(_value, (v) => _then(v as _$_Results));

  @override
  _$_Results get _value => super._value as _$_Results;

  @override
  $Res call({
    Object? selected = freezed,
    Object? query = freezed,
    Object? searchResults = freezed,
  }) {
    return _then(_$_Results(
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as SelectedLocation,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      searchResults: searchResults == freezed
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<FormattedLocation>,
    ));
  }
}

/// @nodoc

class _$_Results with DiagnosticableTreeMixin implements _Results {
  const _$_Results(
      {required this.selected,
      required this.query,
      required final List<FormattedLocation> searchResults})
      : _searchResults = searchResults;

  @override
  final SelectedLocation selected;
  @override
  final String query;
  final List<FormattedLocation> _searchResults;
  @override
  List<FormattedLocation> get searchResults {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OpenMapState.results(selected: $selected, query: $query, searchResults: $searchResults)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OpenMapState.results'))
      ..add(DiagnosticsProperty('selected', selected))
      ..add(DiagnosticsProperty('query', query))
      ..add(DiagnosticsProperty('searchResults', searchResults));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Results &&
            const DeepCollectionEquality().equals(other.selected, selected) &&
            const DeepCollectionEquality().equals(other.query, query) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selected),
      const DeepCollectionEquality().hash(query),
      const DeepCollectionEquality().hash(_searchResults));

  @JsonKey(ignore: true)
  @override
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      __$$_ResultsCopyWithImpl<_$_Results>(this, _$identity);

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
      {required final SelectedLocation selected,
      required final String query,
      required final List<FormattedLocation> searchResults}) = _$_Results;

  @override
  SelectedLocation get selected => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;
  List<FormattedLocation> get searchResults =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      throw _privateConstructorUsedError;
}

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
abstract class _$$_SingleCopyWith<$Res> {
  factory _$$_SingleCopyWith(_$_Single value, $Res Function(_$_Single) then) =
      __$$_SingleCopyWithImpl<$Res>;
  $Res call({FormattedLocation? selected});

  $FormattedLocationCopyWith<$Res>? get selected;
}

/// @nodoc
class __$$_SingleCopyWithImpl<$Res> extends _$SelectedLocationCopyWithImpl<$Res>
    implements _$$_SingleCopyWith<$Res> {
  __$$_SingleCopyWithImpl(_$_Single _value, $Res Function(_$_Single) _then)
      : super(_value, (v) => _then(v as _$_Single));

  @override
  _$_Single get _value => super._value as _$_Single;

  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$_Single(
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

class _$_Single with DiagnosticableTreeMixin implements _Single {
  const _$_Single(this.selected);

  @override
  final FormattedLocation? selected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectedLocation.single(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelectedLocation.single'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Single &&
            const DeepCollectionEquality().equals(other.selected, selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(selected));

  @JsonKey(ignore: true)
  @override
  _$$_SingleCopyWith<_$_Single> get copyWith =>
      __$$_SingleCopyWithImpl<_$_Single>(this, _$identity);

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
  const factory _Single(final FormattedLocation? selected) = _$_Single;

  FormattedLocation? get selected => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_SingleCopyWith<_$_Single> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MultiCopyWith<$Res> {
  factory _$$_MultiCopyWith(_$_Multi value, $Res Function(_$_Multi) then) =
      __$$_MultiCopyWithImpl<$Res>;
  $Res call({List<FormattedLocation> selected});
}

/// @nodoc
class __$$_MultiCopyWithImpl<$Res> extends _$SelectedLocationCopyWithImpl<$Res>
    implements _$$_MultiCopyWith<$Res> {
  __$$_MultiCopyWithImpl(_$_Multi _value, $Res Function(_$_Multi) _then)
      : super(_value, (v) => _then(v as _$_Multi));

  @override
  _$_Multi get _value => super._value as _$_Multi;

  @override
  $Res call({
    Object? selected = freezed,
  }) {
    return _then(_$_Multi(
      selected == freezed
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<FormattedLocation>,
    ));
  }
}

/// @nodoc

class _$_Multi with DiagnosticableTreeMixin implements _Multi {
  const _$_Multi(final List<FormattedLocation> selected) : _selected = selected;

  final List<FormattedLocation> _selected;
  @override
  List<FormattedLocation> get selected {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selected);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SelectedLocation.multi(selected: $selected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SelectedLocation.multi'))
      ..add(DiagnosticsProperty('selected', selected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Multi &&
            const DeepCollectionEquality().equals(other._selected, _selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_selected));

  @JsonKey(ignore: true)
  @override
  _$$_MultiCopyWith<_$_Multi> get copyWith =>
      __$$_MultiCopyWithImpl<_$_Multi>(this, _$identity);

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
  const factory _Multi(final List<FormattedLocation> selected) = _$_Multi;

  List<FormattedLocation> get selected => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_MultiCopyWith<_$_Multi> get copyWith =>
      throw _privateConstructorUsedError;
}
