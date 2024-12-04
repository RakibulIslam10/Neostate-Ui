import 'package:video_player/video_player.dart';
import 'package:get/get.dart';

class FeedController extends GetxController {
  late VideoPlayerController videoPlayerController;

  final currentIndex = 0.obs;
  var isInitialized = false.obs;
  RxString countrySelectMethod = 'Select City'.obs;

  @override
  void onInit() {
    super.onInit();
    videoPlayerController =
        VideoPlayerController.network(videos[currentIndex.value])
          ..initialize().then((_) {
            isInitialized.value = true;
            videoPlayerController.play();
          });
  }

  @override
  void onClose() {
    videoPlayerController.dispose();
    super.onClose();
  }

  List<String> countryList = [
    'Bangladesh',
    'India',
    'United States',
    'Canada',
    'Australia',
    'United Kingdom',
    'Germany',
    'France',
    'Japan',
    'Brazil'
  ];

  final videos = [
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
    'https://www.learningcontainer.com/wp-content/uploads/2020/05/sample-mp4-file.mp4',
  ];

  changeVideo(int index) {
    if (index >= 0 && index < videos.length) {
      currentIndex.value = index;
      videoPlayerController.pause();
      videoPlayerController.dispose();

      videoPlayerController = VideoPlayerController.network(videos[index])
        ..initialize().then((_) {
          isInitialized.value = true;
          videoPlayerController.play();
        });
    }
  }
}
