import 'package:get/get.dart';
import 'package:nfcpay_structure/bindings/filter_screen_binding.dart';
import 'package:nfcpay_structure/bindings/navigation_bindings.dart';
import 'package:nfcpay_structure/bindings/product_details_bindings.dart';
import 'package:nfcpay_structure/views/filter/screen/filter_screen.dart';
import 'package:nfcpay_structure/views/navigation/screen/navigation_screen.dart';
import 'package:nfcpay_structure/views/product_details/screen/product_details_screen.dart';
import 'package:nfcpay_structure/views/report/screen/report_screen.dart';
import '../bindings/bookmark_binding.dart';
import '../bindings/edit_profile_binding.dart';
import '../bindings/report_screen_binding.dart';
import '../bindings/setting_binding.dart';
import '../bindings/splash_binding.dart';
import '../bindings/test_binding.dart';
import '../views/bookmark/screen/bookmark_screen.dart';
import '../views/edit_profile/screen/edit_profile_screen.dart';
import '../views/setting/screen/setting_screen.dart';
import '../views/splash/screen/splash_screen.dart';
import '../views/test/screen/test_screen.dart';
part '../routes/route_pages.dart';

class Routes {
  // Page List
  static var list = RoutePageList.list;

  // Route Names
  static const String splashScreen = '/splashScreen';
  static const String navigation = '/navigation';
  static const String ProductDetails = '/productDetails';
  static const String filterScreen = '/filterScreen';
  static const String productListScreen = '/productListScreen';
  static const String reportScreen = '/reportScreen';

  static const String food_menuScreen = '/food_menuScreen';
  static const String testScreen = '/testScreen';
  static const String bookmarkScreen = '/bookmarkScreen';
  static const String settingScreen = '/settingScreen';
  static const String edit_profileScreen = '/edit_profileScreen';
}
