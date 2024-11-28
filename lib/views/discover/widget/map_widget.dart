import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'food_card_widget.dart';
import 'package:nfcpay_structure/views/discover/controller/discover_controller.dart';

class MapWidget extends GetView<DiscoverController> {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          // Google Map Widget
          GoogleMap(
            initialCameraPosition: controller.initialCameraPosition.value ??
                CameraPosition( // Provide a fallback CameraPosition
                  target: const LatLng(0.0, 0.0),
                  zoom: 10.0,
                ),
            onTap: (argument) {
              controller.toggleFoodCardVisibility();
            },
          ),

          Obx(() {
            return controller.isFoodCardVisible.value
                ? Positioned(
              bottom: 100.0,
              left: 16.0,
              right: 16.0,
              child: FoodCardWidget(),
            )
                : const SizedBox.shrink();
          }),
        ],
      ),
    );
  }
}

