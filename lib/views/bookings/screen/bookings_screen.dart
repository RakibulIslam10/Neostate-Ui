import 'package:nfcpay_structure/views/bookings/widget/two_button_widget.dart';
import 'package:nfcpay_structure/views/bookings/widget/video_widget.dart';

import '../../../base/utils/basic_import.dart';
import '../controller/bookings_controller.dart';
part 'bookings_tablet_screen.dart';
part 'bookings_mobile_screen.dart';

class BookingsScreen extends GetView<BookingsController> {
  const BookingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: BookingsMobileScreen(),
      tablet: BookingsTabletScreen(),
    );
  }
}
