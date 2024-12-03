import 'package:get/get.dart';
import 'package:nfcpay_structure/bindings/filter_screen_binding.dart';
import 'package:nfcpay_structure/bindings/navigation_bindings.dart';
import 'package:nfcpay_structure/bindings/product_details_bindings.dart';
import 'package:nfcpay_structure/views/feed/screen/feed_screen.dart';
import 'package:nfcpay_structure/views/filter/screen/filter_screen.dart';
import 'package:nfcpay_structure/views/navigation/screen/navigation_screen.dart';
import 'package:nfcpay_structure/views/product_details/screen/product_details_screen.dart';
import 'package:nfcpay_structure/views/product_list/screen/product_list_screen.dart';
import 'package:nfcpay_structure/views/report/screen/report_screen.dart';
import '../bindings/product_list_screen_binding.dart';
import '../bindings/report_screen_binding.dart';
import '../bindings/splash_binding.dart';
import '../views/splash/screen/splash_screen.dart';
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


}
