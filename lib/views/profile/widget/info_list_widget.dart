import '../../../base/utils/basic_import.dart';
import '../controller/profile_controller.dart';

class InfoListWidget extends GetView<ProfileController> {
  const InfoListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.favorite_outline),
          title: TextWidget(
            Strings.Bookmarks,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.bold,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined,size: Dimensions.iconSizeLarge * 0.8,),
        ),
        ListTile(
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
            Strings.Settings,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.bold,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined,size: Dimensions.iconSizeLarge * 0.8,),
        ),
        ListTile(
          leading: Icon(Icons.mode_comment_outlined),
          title: TextWidget(
            Strings.FeedBackSupport,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.bold,
          ),
          trailing: Icon(Icons.arrow_forward_ios_outlined,size: Dimensions.iconSizeLarge * 0.8,),
        ),
      ],
    );
  }
}
