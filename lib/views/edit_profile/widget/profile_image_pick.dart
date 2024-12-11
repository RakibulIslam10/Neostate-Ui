import 'package:nfcpay_structure/views/edit_profile/controller/edit_profile_controller.dart';
import '../../../base/utils/basic_import.dart';

class ProfileImagePick extends GetView<EditProfileController> {
  const ProfileImagePick({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: CustomColor.primary),
          child: Icon(
            Icons.person,
            size: Dimensions.iconSizeLarge * 3.5,
          ),
        ),
        Positioned(
          right: Dimensions.widthSize * 2,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,color: CustomColor.whiteColor),
            padding: EdgeInsets.all(Dimensions.paddingSize * 0.2),
            child: Icon(Icons.camera_alt_outlined),
          ),
        )
      ],
    );
  }
}
