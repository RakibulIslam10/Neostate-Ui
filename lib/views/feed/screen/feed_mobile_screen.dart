part of 'feed_screen.dart';

class FeedMobileScreen extends GetView<FeedController> {
  const FeedMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return PageView.builder(
      itemCount: controller.videos.length,
      scrollDirection: Axis.vertical,
      onPageChanged: (index) {
        controller.currentIndex.value = index;
      },
      itemBuilder: (context, index) {
        return FeedWidget();
      },
    );
  }
}
