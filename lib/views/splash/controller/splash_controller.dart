import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../routes/routes.dart';

class SplashController extends GetxController {
  final inputController = TextEditingController();
  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAndToNamed(Routes.navigation);

    });
  }
}
