import 'package:flutter/material.dart';

///Map view configuration
class MapViewConfig {
  MapViewConfig({
    this.zoomInIcon,
    this.zoomOutIcon,
    this.searchLoadingIndicator,
    this.searchDoneIcon,
    this.mapBackIcon,
    this.selectCurrentLocationIcon,
  });

  final IconData? zoomInIcon;
  final IconData? zoomOutIcon;
  final Widget? searchLoadingIndicator;
  final IconData? searchDoneIcon;
  final IconData? mapBackIcon;
  final IconData? selectCurrentLocationIcon;
}