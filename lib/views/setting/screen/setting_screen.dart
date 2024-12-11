import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/views/setting/widget/account_info_widget.dart';
import 'package:nfcpay_structure/views/setting/widget/sign_out_button_widget.dart';
import 'package:nfcpay_structure/views/setting/widget/subscription_buttons_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/setting_controller.dart';
part 'setting_tablet_screen.dart';
part 'setting_mobile_screen.dart';

class SettingScreen extends GetView<SettingController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SettingMobileScreen(),
      tablet: SettingTabletScreen(),
    );
  }
}
