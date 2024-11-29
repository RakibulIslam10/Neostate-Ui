import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nfcpay_structure/base/utils/basic_import.dart';
import 'package:nfcpay_structure/routes/routes.dart';
import 'food_card_widget.dart';
import 'package:nfcpay_structure/views/discover/controller/discover_controller.dart';

class MapWidget extends GetView<DiscoverController> {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: controller.initialCameraPosition.value ??
                CameraPosition(
                  // Provide a fallback CameraPosition
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
                    bottom: 140.0,
                    left: 16.0,
                    right: 16.0,
                    child: FoodCardWidget(),
                  )
                : const SizedBox.shrink();
          }),
          Positioned(
              bottom: 75.0,
              left: 16.0,
              right: 16.0,
              child: Row(
                mainAxisAlignment: mainCenter,
                children: [
                  _fillerButtonWidget(),
                  Sizes.width.v5,
                  _listButtonWidget(),
                ],
              ))
        ],
      ),
    );
  }

  _fillerButtonWidget() {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Get.toNamed(Routes.filterScreen);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.verticalSize * 0.3,
            horizontal: Dimensions.heightSize),
        decoration: BoxDecoration(
          color: CustomColor.whiteColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Dimensions.radius * 1.5),
            topLeft: Radius.circular(Dimensions.radius * 1.5),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Wrap(
          spacing: Dimensions.heightSize * 0.5,
          children: [
            Icon(Icons.filter_vintage),
            TextWidget(
              Strings.filter,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }

  _listButtonWidget() {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        // Get.toNamed(Routes.filterScreen);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.verticalSize * 0.3,
            horizontal: Dimensions.heightSize),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
            color: CustomColor.whiteColor,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(Dimensions.radius * 1.5),
                topRight: Radius.circular(Dimensions.radius * 1.5))),
        child: Wrap(
          spacing: Dimensions.heightSize * 0.5,
          children: [
            Icon(Icons.menu),
            TextWidget(
              Strings.list,
              fontWeight: FontWeight.bold,
            )
          ],
        ),
      ),
    );
  }
}
