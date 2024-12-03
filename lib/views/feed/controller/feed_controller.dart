import '../../../base/utils/basic_import.dart';

class FeedController extends GetxController {

  final PageController pageController = PageController();
  final List<String> videoUrls = [
    'https://www.example.com/video1.mp4',
    'https://www.example.com/video2.mp4',
    'https://www.example.com/video3.mp4',
  ];



  var profilePics = [
    'https://www.example.com/profile1.jpg',
    'https://www.example.com/profile2.jpg',
    'https://www.example.com/profile3.jpg',
  ];

  var userNames = ['user1', 'user2', 'user3'];

  var captions = ['This is video 1', 'This is video 2', 'This is video 3'];

  var likes = [100, 200, 300].obs;
  var comments = [50, 60, 70].obs;
  var shares = [10, 20, 30].obs;



  void updateLikes(int index) {
    likes[index]++;
  }

  void updateComments(int index) {
    comments[index]++;
  }

  void updateShares(int index) {
    shares[index]++;
  }
}
