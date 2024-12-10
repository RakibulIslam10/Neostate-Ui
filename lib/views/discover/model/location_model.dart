import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationModel {
  final LatLng position;
  final String name;

  LocationModel({
    required this.position,
    required this.name,
  });
}
final List<LocationModel> locations = [
  LocationModel(position: LatLng(23.8103, 90.4125), name: "Dhaka City Center"),
  LocationModel(position: LatLng(23.7925, 90.4078), name: "Dhanmondi"),
  LocationModel(position: LatLng(23.7809, 90.2792), name: "Uttara"),
  LocationModel(position: LatLng(23.7515, 90.3775), name: "Gulshan"),
  LocationModel(position: LatLng(23.7623, 90.4255), name: "Banani"),
  LocationModel(position: LatLng(23.7748, 90.3654), name: "Mohakhali"),
  LocationModel(position: LatLng(23.7465, 90.3760), name: "Tejgaon"),
  LocationModel(position: LatLng(23.7372, 90.3951), name: "Shahbagh"),
  LocationModel(position: LatLng(23.7057, 90.3563), name: "Jatrabari"),
  LocationModel(position: LatLng(23.7284, 90.4093), name: "Old Dhaka"),

LocationModel(position: LatLng(24.4466, 89.7390), name: "Sirajganj Sadar"),
LocationModel(position: LatLng(24.4245, 89.7055), name: "Kamarpara"),
LocationModel(position: LatLng(24.4198, 89.7394), name: "Salanga"),
LocationModel(position: LatLng(24.4667, 89.7278), name: "Raiganj"),
LocationModel(position: LatLng(24.4857, 89.7352), name: "Shahjadpur"),
LocationModel(position: LatLng(24.4133, 89.6875), name: "Pangsha"),
];
