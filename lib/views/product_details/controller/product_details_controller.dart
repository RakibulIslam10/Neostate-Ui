import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ProductDetailsController extends GetxController {

  Rx<CameraPosition> initialCameraPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // Example coordinates (San Francisco)
    zoom: 16.0,
  ).obs;
}
