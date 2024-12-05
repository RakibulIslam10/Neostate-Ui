import 'package:nfcpay_structure/views/profile/widget/info_list_widget.dart';
import 'package:nfcpay_structure/views/profile/widget/label_box_widget.dart';
import 'package:nfcpay_structure/views/profile/widget/profile_info_box_widget.dart';
import 'package:nfcpay_structure/views/profile/widget/profile_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/profile_controller.dart';
part 'profile_tablet_screen.dart';
part 'profile_mobile_screen.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ProfileMobileScreen(),
      tablet: ProfileTabletScreen(),
    );
  }
}
