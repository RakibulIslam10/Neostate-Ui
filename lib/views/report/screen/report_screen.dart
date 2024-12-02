import 'package:nfcpay_structure/views/report/widget/comment_box_widget.dart';
import '../../../base/utils/basic_import.dart';
part 'report_tablet_screen.dart';
part 'report_mobile_screen.dart';

class ReportScreen extends GetView<ReportController> {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ReportMobileScreen(),
      tablet: ReportTabletScreen(),
    );
  }
}
