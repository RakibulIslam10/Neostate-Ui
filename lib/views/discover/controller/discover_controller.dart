import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DiscoverController extends GetxController {
  RxString countrySelectMethod = 'Select City'.obs;
  List<dynamic> countryList = [];
   RxString cardImage =
      'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
          .obs;

  RxBool isMapReady = false.obs;
  Rx<CameraPosition> initialCameraPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // Example coordinates (San Francisco)
    zoom: 16.0,
  ).obs;
  LatLng destination = LatLng(52.33500926, -122.056456);


  RxBool isFoodCardVisible = false.obs;

  void toggleFoodCardVisibility() {
    isFoodCardVisible.value = !isFoodCardVisible.value;
  }

}
