import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class BookingsController extends GetxController {
  late VideoPlayerController videoPlayerController;
  var isInitialized = false.obs;
  var isPlaying = false.obs;

  @override
  void onInit() {
    super.onInit();
    videoPlayerController = VideoPlayerController.network(
        'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4')
      ..initialize().then((_) {
        isInitialized.value = true; // Mark as initialized
      });
  }

  void togglePlayPause() {
    if (isPlaying.value) {
      videoPlayerController.pause();
    } else {
      videoPlayerController.play();
    }
    isPlaying.value = !isPlaying.value;
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    super.onClose();
  }
}
