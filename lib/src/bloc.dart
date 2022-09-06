import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart';

import './location_model.dart';
import './reverse_options.dart';

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
  }) = _Searching;

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

class Reverse {
  static Future<FormattedLocation> reverseLocation({
    required Locale locale,
    ReverseZoom? zoom,
    required LatLng location,
  }) async {
    var url = Uri.parse("https://nominatim.openstreetmap.org/reverse");

    url = url.replace(
      queryParameters: {
        "lat": location.latitude.toString(),
        "lon": location.longitude.toString(),
        "format": "jsonv2",
        "namedetails": "1",
        "accept-language": locale.languageCode,
        if (zoom != null) "zoom": zoom.zoom(),
        "addressdetails": "1",
        "polygon_geojson": "1",
        "extratags": "1",
      },
    );
    var response = await http.get(url);

    var parsed = jsonDecode(response.body);
    return FormattedLocation.fromJson(parsed);
  }

  static Future<List<FormattedLocation>> search({
    required Locale locale,
    required String query,
    SearchFilters? searchFilters,
  }) async {
    var url = Uri.parse("https://nominatim.openstreetmap.org/search");

    url = url.replace(
      queryParameters: {
        "q": query,
        "format": "jsonv2",
        "namedetails": "1",
        "accept-language": locale.languageCode,
        "addressdetails": "1",
        "polygon_geojson": "1",
        "extratags": "1",
        "polygon_threshold": "1",
        if (searchFilters != null) ...(searchFilters.toJson())
      },
    );
    var response = await http.get(url);
    var parsed = jsonDecode(response.body);
    if (parsed is List) {
      List<FormattedLocation> resList = [];
      for (var loc in parsed) {
        try {
          var res = FormattedLocation.fromJson(loc);
          resList.add(res);
        } catch (e) {
          if (kDebugMode) {
            print(e);
          }
        }
      }
      return Future<List<FormattedLocation>>.value(resList);
    } else {
      throw Exception(parsed);
    }
  }
}
