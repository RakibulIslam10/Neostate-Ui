import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/test_controller.dart';
part 'test_tablet_screen.dart';
part 'test_mobile_screen.dart';

class TestScreen extends GetView<TestController> {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: TestMobileScreen(),
      tablet: TestTabletScreen(),
    );
  }
}
