import 'package:get/get.dart';
import '../views/voucher_code/controller/voucher_code_controller.dart';

class VoucherCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoucherCodeController());
  }
}
