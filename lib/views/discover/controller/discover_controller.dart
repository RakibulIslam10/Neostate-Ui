import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../languages/strings.dart';

class DiscoverController extends GetxController {
  RxString countrySelectMethod = 'Select City'.obs;
  List<dynamic> countryList = [];
  RxString cardImage =
      'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
          .obs;

  RxDouble myLatitude = 23.837355210465297.obs;
  RxDouble myLongitude = 90.36626632925743.obs;

  RxBool isFoodCardVisible = false.obs;

  final List<Marker> marker = [];

  void toggleFoodCardVisibility() {
    isFoodCardVisible.value = !isFoodCardVisible.value;
  }

  /// GET USER CURRENT LOCATION ---------------

  getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      print('Location denied');
      LocationPermission ask = await Geolocator.requestPermission();
    } else {
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      myLatitude.value = currentPosition.latitude;
      myLongitude.value = currentPosition.longitude;
      marker.clear();
      marker.add(Marker(
        markerId: MarkerId('1'),
        infoWindow: InfoWindow(
          title: Strings.location,
          snippet: Strings.myCurrentLocation,
          onTap: () {
            toggleFoodCardVisibility();
          },
        ),
        position: LatLng(myLatitude.value, myLongitude.value),
      ));
    }
  }
}
