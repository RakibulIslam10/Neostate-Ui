import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DiscoverController extends GetxController {
  RxString countrySelectMethod = 'Select City'.obs;
  List<dynamic> countryList = [];


  RxBool isMapReady = false.obs;
  Rx<CameraPosition> initialCameraPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // Example coordinates (San Francisco)
    zoom: 16.0,

  ).obs;
    LatLng destination = LatLng(52.33500926, -122.056456);

}
