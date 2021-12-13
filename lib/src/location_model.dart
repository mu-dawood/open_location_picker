import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'location_model.freezed.dart';

@freezed
class FormattedLocation with _$FormattedLocation {
  const FormattedLocation._();
  const factory FormattedLocation({
    @Default('') String placeId,
    required double lat,
    required double lon,
    required String licence,
    required String osmType,
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
    @Default({}) Map<String, String> names,
  }) = _FormattedLocation;
  String get identifier => "$category-$osmId-$osmType";
  @override
  String toString() {
    if (displayName.isNotEmpty) return displayName;
    return "$lat,$lon";
  }

  LatLng toLatLng() => LatLng(lat, lon);

  Map<String, dynamic> toJson() {
    return {
      "place_id": placeId,
      "licence": licence,
      "osm_type": osmType,
      "osm_id": osmId,
      "lat": lat,
      "lon": lon,
      "place_rank": 30,
      "category": category,
      "type": type,
      "importance": importance,
      "addresstype": addresstype,
      "name": name,
      "display_name": displayName,
      "address": address,
      "extratags": extratags,
      "namedetails": namedetails,
      "boundingbox": [
        boundingbox.southWest?.latitude,
        boundingbox.southWest?.longitude,
        boundingbox.northEast?.latitude,
        boundingbox.northEast?.longitude
      ],
      "geojson": geojson.when(
        point: (latlng, _) => {
          "type": "Point",
          "coordinates": latlng.toGeoPoint(),
        },
        linestring: (list, _) => {
          "type": "LineString",
          "coordinates": list.map((latlng) => latlng.toGeoPoint()),
        },
        polygon: (polygon, _) => {
          "type": "Polygon",
          "coordinates": polygon.map((e) => e.toGeoPoint()),
        },
      )
    };
  }

  static FormattedLocation from(Map<String, dynamic> json) {
    if (json["error"] != null) {
      throw Exception(json["error"]);
    }
    var boundingBox = json["boundingbox"] as List;
    return FormattedLocation(
      placeId: json["place_id"]!.toString(),
      address: Address.fromMap(json["address"] ?? {}),
      names: (json["namedetails"] as Map)
          .map((key, value) => MapEntry(key.toString(), value)),
      lat: double.parse(json['lat']?.toString() ?? ''),
      lon: double.parse(json['lon']?.toString() ?? ''),
      addresstype: json["addresstype"] ?? '',
      boundingbox: LatLngBounds.fromPoints([
        LatLng(double.parse(boundingBox[0].toString()),
            double.parse(boundingBox[2].toString())),
        LatLng(double.parse(boundingBox[1].toString()),
            double.parse(boundingBox[3].toString())),
      ]),
      category: json["category"] ?? '',
      displayName: json["display_name"] ?? '',
      extratags: (json["extratags"] as Map)
          .map((key, value) => MapEntry(key.toString(), value)),
      geojson: GeoGeometry.fromMap(json["geojson"]),
      importance: double.parse(json["importance"]?.toString() ?? ''),
      licence: json["licence"] ?? '',
      name: json["name"] ?? '',
      namedetails: (json["namedetails"] as Map)
          .map((key, value) => MapEntry(key.toString(), value)),
      osmId: int.parse(json["osm_id"]?.toString() ?? '0'),
      osmType: json["osm_type"] ?? '',
      placeRank: int.parse(json["place_rank"]?.toString() ?? '0'),
      type: json["type"] ?? '',
    );
  }
}

extension LatLngExt on LatLng {
  List<double> toGeoPoint() => [longitude, latitude];
}

class Address {
  Address({
    required this.highway,
    required this.road,
    required this.city,
    required this.stateDistrict,
    required this.state,
    required this.postcode,
    required this.country,
    required this.countryCode,
  });

  final String highway;
  final String road;
  final String city;
  final String stateDistrict;
  final String state;
  final String postcode;
  final String country;
  final String countryCode;

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      highway: map['highway'] ?? '',
      road: map['road'] ?? '',
      city: map['city'] ?? '',
      stateDistrict: map['state_district'] ?? '',
      state: map['state'] ?? '',
      postcode: map['postcode'] ?? '',
      country: map['country'] ?? '',
      countryCode: map['country_code'] ?? '',
    );
  }
}

@freezed
class GeoGeometry with _$GeoGeometry {
  const GeoGeometry._();
  factory GeoGeometry.point(LatLng point, Color randomColor) = GeoPoint;
  factory GeoGeometry.linestring(List<LatLng> points, Color randomColor) =
      GeoLinestring;
  factory GeoGeometry.polygon(List<LatLng> points, Color randomColor) =
      GeoPolygon;
  static GeoGeometry fromMap(Map<String, dynamic> json) {
    var coords = json["coordinates"] as List;
    var color =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

    if (json["type"] == "Polygon") {
      var points = coords.map((e) {
        return (e as List).map((e) => _latLng(e)).toList();
      }).toList();
      return GeoGeometry.polygon(
          points.expand((element) => element).toList(), color);
    } else if (json["type"] == "LineString") {
      var points = coords.map((e) => _latLng(e)).toList();
      return GeoGeometry.linestring(points, color);
    } else {
      return GeoGeometry.point(_latLng(coords), color);
    }
  }

  static LatLng _latLng(List<dynamic> data) {
    return LatLng(
      double.parse(data[1].toString()),
      double.parse(data[0].toString()),
    );
  }

  Color color(BuildContext context) {
    var isDark = Theme.of(context).brightness == Brightness.dark;
    var hsl = HSLColor.fromColor(randomColor);
    if (isDark && hsl.lightness > 0.5) {
      return hsl.withLightness(0.5).toColor();
    } else if (!isDark && hsl.lightness < 0.5) {
      return hsl.withLightness(0.5).toColor();
    } else {
      return randomColor;
    }
  }
}
