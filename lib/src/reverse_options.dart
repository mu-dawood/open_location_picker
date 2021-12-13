import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

/// handle what type of address you want when you tap on map
/// when you tap on the map and you set `ReverseZoom.city` then  select the city where you tapped in
enum ReverseZoom {
  /// make user pick the country that contains the tapped location

  country,

  /// make user pick the state that contains the tapped location

  state,

  /// make user pick the county that contains the tapped location

  county,

  /// make user pick the city that contains the tapped location

  city,

  /// make user pick the suburb that contains the tapped location

  suburb,

  /// make user pick the majorStreets that contains the tapped location

  majorStreets,

  /// make user pick the majorAndMinorStreets that contains the tapped location

  majorAndMinorStreets,

  /// make user pick the building that contains the tapped location

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

/// Limit the search results
class SearchFilters {
  /// list of country codes you want to search in
  final List<String>? countryCodes;

  /// list of places ids you want to exclude from search

  final List<String>? excludePlaceIds;

  /// number of places in search response

  final int? limit;

  /// bounds where you search
  final ViewBox? viewBox;

  /// If you are making large numbers of request please include an appropriate email address to identify your requests. See Nominatim's Usage Policy for more details.
  final String? email;

  /// Sometimes you have several objects in OSM identifying the same place or object in reality. The simplest case is a street being split into many different OSM ways due to different characteristics. Nominatim will attempt to detect such duplicates and only return one match unless this parameter
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
      if (excludePlaceIds != null)
        "exclude_place_ids": excludePlaceIds!.join(','),
      if (limit != null) "limit": limit!.toString(),
      if (viewBox != null) ...(viewBox!.toJson()),
      if (email != null) "email": email!,
      if (dedupe != null) "dedupe": dedupe! ? "1" : "0",
    };
  }
}

class ViewBox extends LatLngBounds {
  final bool bounded;

  ViewBox(LatLng southWest, LatLng northEast, [this.bounded = false])
      : super(southWest, northEast);

  Map<String, String> toJson() {
    return {
      "bounded": bounded ? "1" : "0",
      "viewbox":
          "${southWest?.latitude},${southWest?.longitude},${northEast?.latitude},${northEast?.longitude}",
    };
  }
}
