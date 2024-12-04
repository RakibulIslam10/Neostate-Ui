import 'package:nfcpay_structure/views/bookings/controller/bookings_controller.dart';
import 'package:video_player/video_player.dart';

import '../../../base/utils/basic_import.dart';

class VideoWidget extends GetView<BookingsController> {
  const VideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(() {
        return controller.isInitialized.value
            ? Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.defaultHorizontalSize),
                child: GestureDetector(
                  onTap: controller.togglePlayPause, // Tap to play/pause
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      AspectRatio(
                        aspectRatio:
                            controller.videoPlayerController.value.aspectRatio,
                        child: VideoPlayer(controller.videoPlayerController),
                      ),
                      Icon(
                        controller.isPlaying.value
                            ? null
                            : Icons.play_arrow_rounded,
                        color: CustomColor.blackColor,
                        size: Dimensions.iconSizeLarge * 2.5,
                      ),
                    ],
                  ),
                ),
              )
            : Center(child: Loader());
      }),
    );
  }
}
