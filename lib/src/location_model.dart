import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'location_model.freezed.dart';
// cSpell: disable

@freezed
class FormattedLocation with _$FormattedLocation {
  const FormattedLocation._();
  const factory FormattedLocation({
    ///reference to the Nominatim internal database ID
    required String placeId,

    /// latitude of the centroid of the object
    required double lat,

    /// longitude of the centroid of the object
    required double lon,
    required String licence,

    ///reference to the OSM object
    required String osmType,
    String? icon,

    /// reference to the OSM object
    required int osmId,

    /// search rank of the object
    required int placeRank,

    ///key of the main OSM tag
    required String category,

    /// value of the main OSM tag
    required String type,

    /// computed importance rank
    required double importance,
    required String addressType,
    required String name,

    ///full comma-separated address
    required String displayName,

    /// dictionary of address details
    required Address address,

    /// dictionary with additional useful tags like website or max speed
    required Map<String, dynamic> extratags,

    /// dictionary with full list of available names including ref etc
    required Map<String, dynamic> namedetails,

    ///area of corner coordinates
    required LatLngBounds? boundingBox,

    /// GeoBounds of object
    required GeoGeometry geojson,
    required Map<String, String> names,
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
      "addresstype": addressType,
      "name": name,
      "display_name": displayName,
      "address": address.toJson(),
      "extratags": extratags,
      "namedetails": namedetails,
      if (boundingBox != null)
        "boundingbox": [
          boundingBox!.southWest?.latitude,
          boundingBox!.northEast?.latitude,
          boundingBox!.southWest?.longitude,
          boundingBox!.northEast?.longitude
        ],
      "geojson": geojson.when(
        point: (latlng, _) => {
          "type": "Point",
          "coordinates": latlng.toGeoPoint().toList(),
        },
        linestring: (list, _) => {
          "type": "LineString",
          "coordinates": list.map((latlng) => latlng.toGeoPoint()).toList(),
        },
        polygon: (polygon, _) => {
          "type": "Polygon",
          "coordinates": polygon.map((e) => e.toGeoPoint()).toList(),
        },
        multiPolygon: (multiPolygon, _) => {
          "type": "Polygon",
          "coordinates": multiPolygon
              .map((e) => e.map((k) => k.map((l) => l.toGeoPoint())))
              .toList(),

        },
      )
    };
  }

  static FormattedLocation fromLatLng({
    required double lat,
    required double lon,
    String placeId = '',
    String addressType = '',
    String category = '',
    String licence = '',
    String type = '',
    String name = '',
    String osmType = '',
    String? displayName,
    String? icon,
    Address address = const Address(),
    Map<String, String> names = const {},
    Map<String, String> extratags = const {},
    Map<String, String> namedetails = const {},
    LatLngBounds? boundingBox,
    GeoGeometry? geojson,
    double importance = 0,
    int placeRank = 0,
    int osmId = 0,
  }) {
    return FormattedLocation(
      placeId: placeId,
      address: address,
      names: names,
      lat: lat,
      lon: lon,
      addressType: addressType,
      boundingBox: boundingBox,
      category: category,
      displayName: displayName ?? '$lat, $lon',
      extratags: extratags,
      geojson: geojson ??
          GeoGeometry.point(
            LatLng(lon, lat),
            Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
          ),
      importance: importance,
      licence: licence,
      name: name,
      namedetails: namedetails,
      osmId: osmId,
      osmType: osmType,
      placeRank: placeRank,
      type: type,
      icon: icon,
    );
  }

  static FormattedLocation fromJson(Map<String, dynamic> json) {
    if (json["error"] != null) {
      throw Exception(json["error"]);
    }
    var boundingBox = json["boundingbox"] as List;
    var lat = double.parse(json['lat']?.toString() ?? '');
    var lon = double.parse(json['lon']?.toString() ?? '');
    return FormattedLocation(
      placeId: json["place_id"]!.toString(),
      address: Address.fromMap(json["address"] ?? {}),
      names: (json["namedetails"] as Map)
          .map((key, value) => MapEntry(key.toString(), value)),
      lat: lat,
      lon: lon,
      addressType: json["addresstype"] ?? '',
      boundingBox: LatLngBounds.fromPoints([
        LatLng(
          double.parse(boundingBox[0].toString()),
          double.parse(boundingBox[2].toString()),
        ),
        LatLng(
          double.parse(boundingBox[1].toString()),
          double.parse(boundingBox[3].toString()),
        ),
      ]),
      category: json["category"] ?? '',
      displayName: json["display_name"] ?? '',
      extratags: (json["extratags"] as Map)
          .map((key, value) => MapEntry(key.toString(), value)),
      geojson: GeoGeometry.fromMap(json["geojson"] ??
          {
            "type": "Point",
            "coordinates": [lon, lat]
          }),
      importance: double.parse(json["importance"]?.toString() ?? ''),
      licence: json["licence"] ?? '',
      name: json["name"] ?? '',
      namedetails: (json["namedetails"] as Map)
          .map((key, value) => MapEntry(key.toString(), value)),
      osmId: int.parse(json["osm_id"]?.toString() ?? '0'),
      osmType: json["osm_type"] ?? '',
      placeRank: int.parse(json["place_rank"]?.toString() ?? '0'),
      type: json["type"] ?? '',
      icon: json["icon"],
    );
  }
}

extension LatLngExt on LatLng {
  List<double> toGeoPoint() => [longitude, latitude];
}

class Address {
  const Address({
    this.highway = "",
    this.road = "",
    this.city = "",
    this.stateDistrict = "",
    this.state = "",
    this.postcode = "",
    this.country = "",
    this.countryCode = "",
  });

  final String highway;
  final String road;
  final String city;
  final String stateDistrict;
  final String state;
  final String postcode;
  final String country;
  final String countryCode;

  Map<String, dynamic> toJson() {
    return {
      "highway": highway,
      "road": road,
      "city": city,
      "stateDistrict": stateDistrict,
      "state": state,
      "postcode": postcode,
      "country": country,
      "countryCode": countryCode
    };
  }

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
  factory GeoGeometry.multiPolygon(
      List<List<List<LatLng>>> points, Color randomColor) = GeoMultiPolygon;
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
    } else if (json["type"] == "MultiPolygon") {
      List<List<List<LatLng>>> multiPoints = [];
      coords.asMap().forEach((l1Index, l1) {
        multiPoints.add([]);
        l1.asMap().forEach((l2Index, l2) {
          multiPoints[l1Index].add([]);
          l2.asMap().forEach((l3Index, l3) {
            multiPoints[l1Index][l2Index].add(_latLng(l3));
          });
        });
      });
      return GeoGeometry.multiPolygon(multiPoints, color);
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
