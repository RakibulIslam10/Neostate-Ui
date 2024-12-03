import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../languages/strings.dart';

class DiscoverController extends GetxController {
  RxString countrySelectMethod = 'Select City'.obs;
  List<String> countryList = [
    'Bangladesh',
    'India',
    'United States',
    'Canada',
    'Australia',
    'United Kingdom',
    'Germany',
    'France',
    'Japan',
    'Brazil'
  ];

  RxString cardImage =
      'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
          .obs;
  RxDouble myLatitude = 23.837355265297.obs;
  RxDouble myLongitude = 90.366232925743.obs;

  var isFoodCardVisible = false.obs;
  var markers = <Marker>{}.obs;

  void addMarker(LatLng position) {
    final marker = Marker(
      markerId: MarkerId(position.toString()),
      position: position,
      infoWindow: InfoWindow(
        title: Strings.location,
        snippet: Strings.myCurrentLocation,
        onTap: () {
          isFoodCardVisible.value = true;
        },
      ),
    );
    markers.add(marker);
  }

  Position? currentLocation;

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location service are disable');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location permissions are denied");
      } else {
        myLatitude.value = currentLocation!.latitude;
        myLongitude.value = currentLocation!.longitude;
        print(myLongitude.value);
        print(myLatitude.value);
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied , we cannot request permissions');
    }
    return await Geolocator.getCurrentPosition();
  }
}
