import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../base/utils/basic_import.dart';

class ProductDetailsController extends GetxController {

  Rx<CameraPosition> initialCameraPosition = CameraPosition(
    target: LatLng(37.7749, -122.4194), // Example coordinates (San Francisco)
    zoom: 16.0,
  ).obs;
  //
  //
  // ScrollController scrollController = ScrollController();
  // void smoothScrollTo(double offset) {
  //   scrollController.animateTo(
  //     offset,
  //     duration: Duration(seconds: 1),
  //     curve: Curves.easeInOut,
  //   );
  // }
  // @override
  // void onClose() {
  //   scrollController.dispose();
  //   super.onClose();
  // }
}
