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
    return SafeArea(
        child: PageView.builder(
      controller: controller.pageController,
      itemCount: 20,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.amber,
          ),
          child: Stack(
            children: [
              Center(
                child: CachedNetworkImage(
                  imageUrl:
                      'https://play-lh.googleusercontent.com/ptqGk94CN-4x55bFhb9mj7bhxi6xdCicWcYMSIFHA6Rsy1ONl7B5QnMkpEyN7Frj8Q',
                  placeholder: (context, url) => const Text(''),
                  errorWidget: (context, url, error) => const Text(''),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: Dimensions.verticalSize * 2,
                right: Dimensions.horizontalSize * 0.5,
                child: Column(
                  children: [
                    IconButton(
                      icon: Icon(Icons.favorite_border,
                          size: Dimensions.iconSizeLarge * 1.2,
                          color: Colors.white),
                      onPressed: () {
                        // Handle like
                      },
                    ),
                    Sizes.height.v10,
                    IconButton(
                      icon: Icon(Icons.comment,
                          size: Dimensions.iconSizeLarge * 1.2,
                          color: Colors.white),
                      onPressed: () {
                        // Handle comments
                      },
                    ),
                    Sizes.height.v10,
                    IconButton(
                      icon: Icon(Icons.share,
                          size: Dimensions.iconSizeLarge * 1.2,
                          color: Colors.white),
                      onPressed: () {
                        // Handle sharing
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
