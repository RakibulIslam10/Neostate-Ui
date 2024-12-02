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
          _googleMap(),
          _productCard(),
          _buttonWidget(context),
        ],
      ),
    );
  }

  _buttonWidget(BuildContext context) {
    return Positioned(
      bottom: 75.0,
      left: 16.0,
      right: 16.0,
      child: Row(
        mainAxisAlignment: mainEnd,
        children: [
          _fillerButtonWidget(context),
          Sizes.width.v5,
          _listButtonWidget(),
          Sizes.width.v40,
          _locationButton(),
        ],
      ),
    );
  }

  _locationButton() {
    return Container(
      padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
        shape: BoxShape.circle,
        color: CustomColor.whiteColor,
      ),
      child: Icon(Icons.location_pin),
    );
  }

  _productCard() {
    return Obx(() {
      return controller.isFoodCardVisible.value
          ? Positioned(
              bottom: 140.0,
              left: 16.0,
              right: 16.0,
              child: FoodCardWidget(),
            )
          : const SizedBox.shrink();
    });
  }

  _googleMap() {
    return GoogleMap(
      initialCameraPosition: controller.initialCameraPosition.value ??
          CameraPosition(
            // Provide a fallback CameraPosition
            target: const LatLng(0.0, 0.0),
            zoom: 10.0,
          ),
      onTap: (argument) {
        controller.toggleFoodCardVisibility();
      },
    );
  }

  _fillerButtonWidget(context) {
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
        Get.toNamed(Routes.productListScreen);
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
