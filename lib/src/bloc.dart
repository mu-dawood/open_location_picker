import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:open_location_picker/open_location_picker.dart';

part 'bloc.freezed.dart';

abstract class OpenMapBloc {
  OpenMapState get state;
  Stream<OpenMapState> get stream;
  void emit(OpenMapState state);
}

@freezed
class OpenMapState with _$OpenMapState {
  const factory OpenMapState.selected(SelectedLocation selected) = _Selected;
  const factory OpenMapState.reversing(
      SelectedLocation selected, LatLng reversing) = _Reversing;

  const factory OpenMapState.searching({
    required SelectedLocation selected,
    required String query,
    required List<FormattedLocation> oldResults,
  }) = _Searhing;

  const factory OpenMapState.results({
    required SelectedLocation selected,
    required String query,
    required List<FormattedLocation> searchResults,
  }) = _Results;
}

@freezed
class SelectedLocation with _$SelectedLocation {
  const factory SelectedLocation.single(FormattedLocation? selected) = _Single;
  const factory SelectedLocation.multi(List<FormattedLocation> selected) =
      _Multi;
}
