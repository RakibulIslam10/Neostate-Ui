import 'package:get/get.dart';
import '../views/test/controller/test_controller.dart';

class TestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TestController());
  }
}
