import 'package:get/get.dart';
import 'package:nfcpay_structure/views/product_details/controller/product_details_controller.dart';

class ProductDetailsBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductDetailsController());
  }
}
