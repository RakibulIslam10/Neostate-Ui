import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DiscoverController extends GetxController {
  RxString countrySelectMethod = 'Select City'.obs;
  var isFoodCardVisible = false.obs;
  var initialLatLng = LatLng(23.8103, 90.4125).obs;
  Rx<LatLng> userLocation = LatLng(0.0, 0.0).obs;

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

  @override
  void onInit() {
    super.onInit();
    _loadMarkers();
  }

  final RxSet<Marker> markers = <Marker>{}.obs;

  void _loadMarkers() {
    final List<Map<String, dynamic>> locations = [
      {"position": LatLng(23.8103, 90.4125), "name": "Dhaka City Center"},
      {"position": LatLng(23.7925, 90.4078), "name": "Dhanmondi"},
      {"position": LatLng(23.7809, 90.2792), "name": "Uttara"},
      {"position": LatLng(23.7515, 90.3775), "name": "Gulshan"},
      {"position": LatLng(23.7623, 90.4255), "name": "Banani"},
      {"position": LatLng(23.7748, 90.3654), "name": "Mohakhali"},
      {"position": LatLng(23.7465, 90.3760), "name": "Tejgaon"},
      {"position": LatLng(23.7372, 90.3951), "name": "Shahbagh"},
      {"position": LatLng(23.7057, 90.3563), "name": "Jatrabari"},
      {"position": LatLng(23.7284, 90.4093), "name": "Old Dhaka"},
    ];

    for (int i = 0; i < locations.length; i++) {
      final location = locations[i];
      markers.add(
        Marker(
          markerId: MarkerId('marker_$i'),
          position: location["position"],
          infoWindow: InfoWindow(
            title: location["name"],
            snippet: 'A popular spot in Dhaka',
            onTap: () {
              isFoodCardVisible.value = true;
            },
          ),
          onTap: () {
            markers.refresh();
          },
        ),
      );
    }
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
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied , we cannot request permissions');
    }
    return await Geolocator.getCurrentPosition();
  }
}
