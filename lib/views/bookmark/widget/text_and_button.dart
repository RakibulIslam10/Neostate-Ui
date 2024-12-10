import 'package:nfcpay_structure/views/bookmark/controller/bookmark_controller.dart';
import '../../../base/utils/basic_import.dart';

class TextAndButton extends GetView<BookmarkController> {
  const TextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Dimensions.horizontalSize * 0.5),
      child: Column(
        children: [
          TitleSubTitleWidget(
              subTitleFontSize: Dimensions.titleSmall,
              isCenterText: true,
              title: Strings.OhNothingHereYet,
              subTitle:
                  Strings.YouHaveNoFavoritesYetSaveRestaurantsByPressingTheHeart),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: Dimensions.verticalSize),
            child: PrimaryButton(
              buttonColor: CustomColor.background,
              borderWidth: 1.1,
              borderColor: CustomColor.disableColor,
              title: Strings.discoverRestaurants,
              buttonTextColor: CustomColor.blackColor,
              fontWeight: FontWeight.w900,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
