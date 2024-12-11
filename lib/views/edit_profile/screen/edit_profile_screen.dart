import 'package:nfcpay_structure/views/edit_profile/widget/profile_image_pick.dart';
import 'package:nfcpay_structure/views/edit_profile/widget/user_info_field_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/edit_profile_controller.dart';
part 'edit_profile_tablet_screen.dart';
part 'edit_profile_mobile_screen.dart';

class EditProfileScreen extends GetView<EditProfileController> {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: EditProfileMobileScreen(),
      tablet: EditProfileTabletScreen(),
    );
  }
}
