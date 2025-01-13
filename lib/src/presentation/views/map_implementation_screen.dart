import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simplemapapp/src/controller/map_location_controller.dart';
import 'package:simplemapapp/src/presentation/theme/theme_colors.dart';

class MapImplementationScreen extends StatelessWidget {
  MapImplementationScreen({super.key});

  final MapLocationController mapController = Get.isRegistered()
      ? Get.find<MapLocationController>()
      : Get.put(MapLocationController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapLocationController>(
        initState: (e) {},
        builder: (controller) {
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(9)),
                  margin: const EdgeInsets.only(top: 15, bottom: 10),
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      zoom: 14.5,
                      bearing: 2.0,
                      tilt: 5.0,
                      target: controller.currentLoc,
                    ),
                    myLocationButtonEnabled: false,
                    myLocationEnabled: true,
                    zoomControlsEnabled: true,
                    markers: controller.markers,
                    onMapCreated: (cont) {
                      controller.mapController = cont;
                      controller.mapController
                          .animateCamera(CameraUpdate.newLatLngZoom(
                        controller.currentLoc,
                        14.5,
                      ));
                    },
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 5,
                  right: 5,
                  child: Container(
                      margin: const EdgeInsets.all(16),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: kWhiteColor),
                      child: const Center(
                        child: Text(
                          "Map Implemetation",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      )),
                ),
              ],
            ),
          );
        });
  }
}
