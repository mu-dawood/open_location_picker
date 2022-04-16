import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

import 'map_view_settings.dart';

/// Default Floating button for user location
class MyLocationButton extends StatefulWidget {
  const MyLocationButton({
    Key? key,
    required this.moveTo,
    this.selectCurrentLocationIcon,
  }) : super(key: key);
  final ValueChanged<LatLng> moveTo;
  final IconData? selectCurrentLocationIcon;

  @override
  State<MyLocationButton> createState() => _MyLocationButtonState();
}

class _MyLocationButtonState extends State<MyLocationButton> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    var action = OpenMapSettings.of(context)!.getCurrentLocation!;
    return FloatingActionButton(
      onPressed: () async {
        setState(() {
          loading = true;
        });
        try {
          var dest = await action();
          if (dest != null) widget.moveTo(dest);
          setState(() {
            loading = false;
          });
        } catch (e) {
          if (mounted) {
            OpenMapSettings.of(context)?.onError?.call(context, e);
          }
          setState(() {
            loading = false;
          });
        }
      },
      child: Builder(builder: (context) {
        return loading
            ? CircularProgressIndicator(
                color: IconTheme.of(context).color,
              )
            : Icon(
                widget.selectCurrentLocationIcon ?? Icons.my_location,
                color: Colors.white,
              );
      }),
    );
  }
}
