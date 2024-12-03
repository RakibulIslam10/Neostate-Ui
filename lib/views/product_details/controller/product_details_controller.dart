import '../../../base/utils/basic_import.dart';

class ProductDetailsController extends GetxController {
  Rx<CameraPosition> initialCameraPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // Example coordinates (San Francisco)
    zoom: 16.0,
  ).obs;

  var currentPage = 0.obs;
  final List<String> imageUrls = [
    'https://media.istockphoto.com/id/1457433817/photo/group-of-healthy-food-for-flexitarian-diet.webp?b=1&s=612x612&w=0&k=20&c=V8oaDpP3mx6rUpRfrt2L9mZCD0_ySlnI7cd4nkgGAb8=',
    'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg',
    'https://www.allrecipes.com/thmb/fFW1o307WSqFFYQ3-QXYVpnFj6E=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/48727-Mikes-homemade-pizza-DDMFS-beauty-4x3-BG-2974-a7a9842c14e34ca699f3b7d7143256cf.jpg',
    'https://plus.unsplash.com/premium_photo-1673108852141-e8c3c22a4a22?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Zm9vZCUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D'
  ];
}
