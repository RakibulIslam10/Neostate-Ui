import '../../../base/utils/basic_import.dart';
import '../controller/profile_controller.dart';

class ProfileWidget extends GetView<ProfileController> {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Sizes.height.v20,
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: Dimensions.paddingSize),
              padding: EdgeInsets.all(Dimensions.paddingSize * 0.5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: CustomColor.primary),
              child: Icon(
                Icons.person,
                size: Dimensions.iconSizeLarge * 3.5,
              ),
            ),
            Positioned(
              top: Dimensions.heightSize,
              right: Dimensions.heightSize * 1.5,
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColor.blackColor.withOpacity(0.9),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Dimensions.radius * 2),
                    bottomRight: Radius.circular(Dimensions.radius * 2),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.paddingSize * 0.5,
                    vertical: Dimensions.verticalSize * 0.1),
                child: TextWidget(
                  '1',
                  color: CustomColor.primary,
                  fontWeight: FontWeight.w900,
                  fontSize: Dimensions.titleLarge * 1.2,
                ),
              ),
            )
          ],
        ),
        TextWidget(
          'App',
          fontSize: Dimensions.titleLarge * 1.2,
          fontWeight: FontWeight.w900,
        ),
        TextWidget(padding: EdgeInsets.only(bottom: Dimensions.verticalSize * 0.5),
          'Newbie | Deals',
          color: CustomColor.blackColor.withOpacity(0.4),
        ),
      ],
    );
  }
}
