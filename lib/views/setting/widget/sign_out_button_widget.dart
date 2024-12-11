import 'package:nfcpay_structure/views/setting/controller/setting_controller.dart';

import '../../../base/utils/basic_import.dart';

class SignOutButtonWidget extends GetView<SettingController> {
  const SignOutButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: Dimensions.verticalSize),
      child: PrimaryButton(
        borderColor: CustomColor.blackColor,
        buttonColor: CustomColor.whiteColor,
        borderWidth: 1.1,
        buttonTextColor: CustomColor.blackColor,fontWeight: FontWeight.w900,
        title: Strings.signOut, onPressed: () {

      },),
    );
  }
}
