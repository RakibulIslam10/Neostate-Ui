import 'package:nfcpay_structure/views/bookmark/controller/bookmark_controller.dart';

import '../../../base/utils/basic_import.dart';

class ProfileImagePick extends GetView<BookmarkController> {
  const ProfileImagePick({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
      padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: CustomColor.primary),
      child: Icon(
        Icons.person,
        size: Dimensions.iconSizeLarge * 3.5,
      ),
    );
  }
}
