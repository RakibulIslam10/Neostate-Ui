import 'package:nfcpay_structure/views/profile/controller/profile_controller.dart';

import '../../../base/utils/basic_import.dart';

class LabelBoxWidget extends GetView<ProfileController> {
  const LabelBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: mainCenter,
          children: [
            TextWidget(
              '0  ',
              color: CustomColor.disableColor,
            ),
            Container(
              height: Dimensions.heightSize * 1.5,
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                  color: CustomColor.disableColor.withOpacity(0.3)),
            ),
            TextWidget(
              '  5',
              color: CustomColor.disableColor,
            ),
          ],
        ),
        TextWidget(
          padding: EdgeInsets.symmetric(vertical: Dimensions.heightSize * 0.8),
          Strings.useMoreDealsToReachLevel,
          fontSize: Dimensions.titleSmall,
          color: CustomColor.blackColor.withOpacity(0.4),
        ),
      ],
    );
  }
}
