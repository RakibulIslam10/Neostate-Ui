import 'package:get/get.dart';
import 'package:nfcpay_structure/views/filter/controller/filter_controller.dart';

class FilterScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FilterController());
  }
}
