import 'package:nfcpay_structure/views/bookings/controller/bookings_controller.dart';

import '../../../base/utils/basic_import.dart';

class TwoButtonWidget extends GetView<BookingsController> {
  const TwoButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.cyanAccent,
      height: MediaQuery.of(context).size.height * 0.24,
      child: Column(
        children: [
          Sizes.height.v20,
          PrimaryButton(
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.horizontalSize * 0.5),
            title: Strings.joinNeoTaste,
            buttonTextColor: CustomColor.blackColor,
            onPressed: () {},
          ),
          Sizes.height.v10,
          PrimaryButton(
            borderColor: CustomColor.disableColor.withOpacity(0.5),
            borderWidth: 2,
            buttonColor: Colors.transparent,
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.horizontalSize * 0.5),
            title: Strings.login,
            buttonTextColor: CustomColor.blackColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
