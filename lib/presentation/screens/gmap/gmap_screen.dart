import 'package:flutter/material.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../infrastructure/core/constants/values.dart';
import '../../../infrastructure/core/utility/gmap_config.dart';

class GMapScreen {
  static Future<LocationResult> mapView(BuildContext context) async {
    GmapConfig gMap = GmapConfig();
    return await showLocationPicker(
      context,
      gMap.getGmapKey() as String,
      // initialCenter: LatLng(31.1975844, 29.9598339),
      initialCenter: LatLng(
        LATITUDE,
        LONGITUDE,
      ),
      // automaticallyAnimateToCurrentLocation: true,
      // mapStylePath: 'assets/mapStyle.json',
      myLocationButtonEnabled: true,
      // requiredGPS: true,
      layersButtonEnabled: true,
      countries: ['BD'],
      // resultCardAlignment: Alignment.bottomCenter,
      desiredAccuracy: LocationAccuracy.best,
    );
  }
}
