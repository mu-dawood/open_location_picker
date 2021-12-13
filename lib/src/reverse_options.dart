import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

/// handle what type of address you want when you tap on map
/// when you tap on the map and you set `ReverseZoom.city` then  select the city where you tapped in
enum ReverseZoom {
  country,
  state,
  county,
  city,
  suburb,
  majorStreets,
  majorAndMinorStreets,
  building,
}

extension ReverseZoomExt on ReverseZoom {
  String zoom() {
    switch (this) {
      case ReverseZoom.country:
        return "3";
      case ReverseZoom.state:
        return "5";
      case ReverseZoom.county:
        return "8";
      case ReverseZoom.city:
        return "10";
      case ReverseZoom.suburb:
        return "14";
      case ReverseZoom.majorStreets:
        return "16";
      case ReverseZoom.majorAndMinorStreets:
        return "17";
      case ReverseZoom.building:
        return "18";
    }
  }
}

class SearchFilters {
  final List<String>? countryCodes;
  final List<String>? excludePlaceIds;
  final int? limit;
  final ViewBox? viewBox;
  final String? email;
  final bool? dedupe;

  SearchFilters({
    this.countryCodes,
    this.excludePlaceIds,
    this.limit,
    this.viewBox,
    this.email,
    this.dedupe,
  });

  Map<String, String> toJson() {
    return {
      if (countryCodes != null) "countrycodes": countryCodes!.join(','),
      if (excludePlaceIds != null) "exclude_place_ids": excludePlaceIds!.join(','),
      if (limit != null) "limit": limit!.toString(),
      if (viewBox != null) ...(viewBox!.toJson()),
      if (email != null) "email": email!,
      if (dedupe != null) "dedupe": dedupe! ? "1" : "0",
    };
  }
}

class ViewBox extends LatLngBounds {
  final bool bounded;

  ViewBox(LatLng southWest, LatLng northEast, [this.bounded = false]) : super(southWest, northEast);

  Map<String, String> toJson() {
    return {
      "bounded": bounded ? "1" : "0",
      "viewbox": "${southWest?.latitude},${southWest?.longitude},${northEast?.latitude},${northEast?.longitude}",
    };
  }
}
