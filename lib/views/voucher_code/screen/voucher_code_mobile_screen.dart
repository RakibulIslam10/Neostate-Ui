part of 'voucher_code_screen.dart';

class VoucherCodeMobileScreen extends GetView<VoucherCodeController> {
  const VoucherCodeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(''),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.horizontalSize * 0.5),
        child: Column(
          children: [
            Sizes.height.v40,
            RedeemTextAndCodeField(),
            Spacer(),
            PrimaryButton(
              title: Strings.checkCode,
              onPressed: () {},
              disable: true,
            ),
            Sizes.height.v25
          ],
        ),
      ),
    );
  }
}
