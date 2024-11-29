import 'package:get/get.dart';
import 'package:nfcpay_structure/bindings/navigation_bindings.dart';
import 'package:nfcpay_structure/bindings/product_details_bindings.dart';
import 'package:nfcpay_structure/splash/screen/splash_screen.dart';
import 'package:nfcpay_structure/views/navigation/screen/navigation_screen.dart';
import 'package:nfcpay_structure/views/product_details/screen/product_details_screen.dart';
import '../bindings/splash_binding.dart';
part '../routes/route_pages.dart';

class Routes {
  // Page List
  static var list = RoutePageList.list;

  // Route Names
  static const String splashScreen = '/splashScreen';
  static const String navigation = '/navigation';
  static const String ProductDetails = '/productDetails';


}
