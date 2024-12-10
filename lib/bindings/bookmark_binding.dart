import 'package:get/get.dart';
import '../views/bookmark/controller/bookmark_controller.dart';

class BookmarkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BookmarkController());
  }
}
