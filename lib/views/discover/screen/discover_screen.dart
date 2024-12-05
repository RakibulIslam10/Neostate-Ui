import 'package:nfcpay_structure/base/utils/basic_import.dart';
import 'package:nfcpay_structure/views/discover/widget/map_widget.dart';
import 'package:nfcpay_structure/views/discover/widget/product_list_widget.dart';
import '../widget/bottom_sheet_widget.dart';
import 'discover_tablet_screen.dart';
part 'discover_mobile_screen.dart';

class DiscoverScreen extends GetView<DiscoverController> {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: DiscoverMobileScreen(),
      tablet: DiscoverTabletScreen(),
    );
  }
}
