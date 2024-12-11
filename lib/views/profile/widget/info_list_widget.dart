import '../../../base/utils/basic_import.dart';
import '../controller/profile_controller.dart';

class InfoListWidget extends GetView<ProfileController> {
  const InfoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            Get.toNamed(Routes.bookmarkScreen);
          },
          leading: Icon(Icons.favorite_outline),
          title: TextWidget(
            Strings.bookmarks,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.bold,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined,size: Dimensions.iconSizeLarge * 0.8,),
        ),
        ListTile(
          onTap: () {
            Get.toNamed(Routes.edit_profileScreen);
          },
          leading: Icon(Icons.question_mark_sharp),
          title: TextWidget(
            Strings.Tutorial,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.bold,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined,size: Dimensions.iconSizeLarge * 0.8,),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: TextWidget(
            onTap: () {
              Get.toNamed(Routes.settingScreen);
            },
            Strings.Settings,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.bold,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined,size: Dimensions.iconSizeLarge * 0.8,),
        ),
        ListTile(
          leading: Icon(Icons.mode_comment_outlined),
          title: TextWidget(
            Strings.feedBackSupport,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.bold,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined,size: Dimensions.iconSizeLarge * 0.8,),
        ),
      ],
    );
  }
}
