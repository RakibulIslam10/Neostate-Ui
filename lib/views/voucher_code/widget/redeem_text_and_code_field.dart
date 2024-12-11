import 'package:nfcpay_structure/views/voucher_code/controller/voucher_code_controller.dart';

import '../../../base/utils/basic_import.dart';
import '../../../base/widgets/primary_input_widget.dart';

class RedeemTextAndCodeField extends GetView<VoucherCodeController> {
  const RedeemTextAndCodeField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          Strings.redeemVoucher,
          fontWeight: FontWeight.w900,
          fontSize: Dimensions.titleLarge,
        ),
        Sizes.height.v10,
        TextWidget(
          Strings.pleaseEnterBelowTheVoucherOrReferralCodeYouWantToRedeem,
          color: CustomColor.blackColor.withOpacity(0.5),
        ),
        Sizes.height.v10,
        PrimaryInputWidget(
            title: Strings.Code,
            radius: Dimensions.radius * 2,
            controller: TextEditingController(),
            hintText: ''),
      ],
    );
  }
}
