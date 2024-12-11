import 'package:nfcpay_structure/views/setting/controller/setting_controller.dart';
import '../../../base/utils/basic_import.dart';

class SubscriptionButtonsWidget extends GetView<SettingController> {
  const SubscriptionButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsets.only(top: Dimensions.verticalSize,bottom: Dimensions.verticalSize * 0.5),
          Strings.subscription,
          fontWeight: FontWeight.w900,
          fontSize: Dimensions.titleLarge,
        ),
        PrimaryButton(
          title: Strings.addSubscription,
          buttonTextColor: CustomColor.blackColor,
          fontWeight: FontWeight.w900,
          onPressed: () {},
        ),
        Sizes.height.v10,
        PrimaryButton(
          buttonColor: CustomColor.disableColor.withOpacity(0.25),
          borderColor: CustomColor.whiteColor,
          title: Strings.enterVoucherCode,
          buttonTextColor: CustomColor.blackColor,
          fontWeight: FontWeight.w900,
          onPressed: () {
            Get.toNamed(Routes.voucher_codeScreen);
          },
        ),
      ],
    );
  }
}
