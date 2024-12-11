import 'package:nfcpay_structure/views/voucher_code/widget/redeem_text_and_code_field.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/voucher_code_controller.dart';
part 'voucher_code_tablet_screen.dart';
part 'voucher_code_mobile_screen.dart';

class VoucherCodeScreen extends GetView<VoucherCodeController> {
  const VoucherCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: VoucherCodeMobileScreen(),
      tablet: VoucherCodeTabletScreen(),
    );
  }
}
