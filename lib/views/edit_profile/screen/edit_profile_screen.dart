import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/base/widgets/primary_input_widget.dart';
import 'package:nfcpay_structure/views/edit_profile/widget/profile_image_pick.dart';
import '../../../base/utils/basic_import.dart';
import '../../profile/widget/profile_widget.dart';
import '../controller/edit_profile_controller.dart';
part 'edit_profile_tablet_screen.dart';
part 'edit_profile_mobile_screen.dart';

class EditProfileScreen extends GetView<EditProfileController> {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: EditProfileMobileScreen(),
      tablet: EditProfileTabletScreen(),
    );
  }
}
