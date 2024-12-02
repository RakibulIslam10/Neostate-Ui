import 'package:get/get.dart';
import 'package:nfcpay_structure/views/report/controller/report_controller.dart';

class ReportScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ReportController());
  }
}
