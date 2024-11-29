import 'package:get/get.dart';
import 'package:nfcpay_structure/views/product_list/controller/product_list_controller.dart';

class ProductListScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductListController());
  }
}
