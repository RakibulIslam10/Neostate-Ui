import 'package:nfcpay_structure/base/widgets/primary_input_widget.dart';
import 'package:nfcpay_structure/views/product_list/widget/product_list_widget.dart';
import 'package:nfcpay_structure/views/product_list/widget/top_bar.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/product_list_controller.dart';
part 'product_list_tablet_screen.dart';
part 'product_list_mobile_screen.dart';

class ProductListScreen extends GetView<ProductListController> {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ProductListMobileScreen(),
      tablet: ProductListTabletScreen(),
    );
  }
}
