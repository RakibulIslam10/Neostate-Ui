import 'package:get/get.dart';
import 'package:nfcpay_structure/views/bookings/controller/bookings_controller.dart';
import 'package:nfcpay_structure/views/discover/controller/discover_controller.dart';
import 'package:nfcpay_structure/views/feed/controller/feed_controller.dart';
import 'package:nfcpay_structure/views/navigation/controller/navigation_controller.dart';
import 'package:nfcpay_structure/views/profile/controller/profile_controller.dart';

class NavigationBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => DiscoverController());
    Get.lazyPut(() => FeedController());
    Get.lazyPut(() => BookingsController());
    Get.lazyPut(() => ProfileController());
  }
}
