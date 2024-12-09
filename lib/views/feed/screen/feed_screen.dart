import 'package:nfcpay_structure/views/feed/widget/feed_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../../discover/widget/bottom_sheet_widget.dart';
import '../controller/feed_controller.dart';
part 'feed_tablet_screen.dart';
part 'feed_mobile_screen.dart';

class FeedScreen extends GetView<FeedController> {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: FeedMobileScreen(),
      tablet: FeedTabletScreen(),
    );
  }
}
