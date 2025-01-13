import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapLocationController extends GetxController {
  @override
  void onInit() {
    initialMarkerSetupFunc();
    super.onInit();
  }

  final LatLng currentLoc = const LatLng(
    24.878294216691447,
    67.07150619550413,
  );

  late GoogleMapController mapController;
  final Set<Marker> markers = {};
  LatLng secondMarkerPosition =
      const LatLng(24.87229839727546, 67.0709912113667);

// < ---------------------  NORMAL CONTROLLER FUNCTION --------------------- >
  void initialMarkerSetupFunc() {
    markers.add(
      Marker(
        markerId: const MarkerId('currentLocation'),
        position: currentLoc,
        infoWindow: const InfoWindow(
            title: "Current Location",
            snippet: "This is your current location"),
      ),
    );

    markers.add(
      Marker(
        markerId: const MarkerId('secondMarker'),
        position: secondMarkerPosition,
        infoWindow: const InfoWindow(
            title: "Second Marker", snippet: "Tap for more details"),
      ),
    );
  }
}
