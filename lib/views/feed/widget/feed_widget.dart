import 'package:nfcpay_structure/views/feed/controller/feed_controller.dart';
import 'package:video_player/video_player.dart';
import '../../../base/utils/basic_import.dart';
import 'card_widget.dart';

class FeedWidget extends GetView<FeedController> {
  const FeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return controller.isInitialized.value
          ? AspectRatio(
              aspectRatio: controller.videoPlayerController.value.aspectRatio,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  VideoPlayer(controller.videoPlayerController),
                  _likeShareWidget(context),
                  _foodCard(context),
                ],
              ),
            )
          : Center(child: Loader());
    });
  }

  _foodCard(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.09),
      child: CardWidget(),
    );
  }

  _likeShareWidget(BuildContext context) {
    return Positioned(
      right: Dimensions.widthSize,
      bottom: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        children: [
          Column(
            children: [
              Icon(
                Icons.favorite_outline,
                color: CustomColor.whiteColor,
                size: Dimensions.iconSizeLarge * 1.2,
              ),
              TextWidget(
                color: CustomColor.whiteColor,
                Strings.like,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.8),
            child: Column(
              children: [
                Icon(
                  color: CustomColor.whiteColor,
                  Icons.share_outlined,
                  size: Dimensions.iconSizeLarge * 1.2,
                ),
                TextWidget(
                  color: CustomColor.whiteColor,
                  Strings.share,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ),
          Icon(
            Icons.more_horiz,
            color: CustomColor.whiteColor,
            size: Dimensions.iconSizeLarge * 1.5,
          ),
        ],
      ),
    );
  }
}
