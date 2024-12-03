import 'package:nfcpay_structure/views/feed/controller/feed_controller.dart';
import '../../../base/utils/basic_import.dart';

class VideoPlayerWidget extends GetView<FeedController> {
  VideoPlayerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      itemCount: 20,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Stack(
          children: [
          Positioned(
            bottom: 50,
            left: 10,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://www.example.com/profile_pic.jpg'), // User profile image
                ),
                const SizedBox(height: 10),
                const Text(
                  'Username', // Display username
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'This is a video caption. #hashtag',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            right: 10,
            child: Column(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border, color: Colors.white),
                  onPressed: () {
                    // Handle like
                  },
                ),
                const Text(
                  '500', // Number of likes
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                IconButton(
                  icon: const Icon(Icons.comment, color: Colors.white),
                  onPressed: () {
                    // Handle comments
                  },
                ),
                const Text(
                  '100', // Number of comments
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 20),
                IconButton(
                  icon: const Icon(Icons.share, color: Colors.white),
                  onPressed: () {
                    // Handle sharing
                  },
                ),
                const Text(
                  '50', // Number of shares
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],);
      },
    );
  }
}
