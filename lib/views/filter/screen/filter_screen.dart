import 'package:nfcpay_structure/views/filter/widget/button_widget.dart';
import 'package:nfcpay_structure/views/filter/widget/category_widget.dart';
import 'package:nfcpay_structure/views/filter/widget/day_button_widget.dart';
import 'package:nfcpay_structure/views/filter/widget/time_button_Widget.dart';
import 'package:nfcpay_structure/views/filter/widget/top_app_bar_widget.dart';
import '../../../base/utils/basic_import.dart';
part 'filter_tablet_screen.dart';
part 'filter_mobile_screen.dart';

class FilterScreen extends GetView<FilterController> {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: FilterMobileScreen(),
      tablet: FilterTabletScreen(),
    );
  }
}
