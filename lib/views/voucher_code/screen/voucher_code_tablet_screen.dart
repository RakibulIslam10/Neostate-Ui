part of 'voucher_code_screen.dart';

class VoucherCodeTabletScreen extends GetView<VoucherCodeController> {
  const VoucherCodeTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('VoucherCode Tablet Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
