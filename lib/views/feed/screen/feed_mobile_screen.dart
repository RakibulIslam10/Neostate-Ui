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
    return Stack(
      children: [
        PageView.builder(
          itemCount: controller.videos.length,
          scrollDirection: Axis.vertical,
          onPageChanged: (index) {
            controller.currentIndex.value = index;
          },
          itemBuilder: (context, index) {
            return FeedWidget();
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: Dimensions.heightSize * 3,left: Dimensions.horizontalSize * 0.5),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(Dimensions.radius * 0.6),
                  ),
                ),
                context: context,
                builder: (context) {
                  return BottomSheetWidget();
                },
              );

            },
            child: Wrap(
              children: [
                Obx(() => TextWidget(
                  color: CustomColor.whiteColor,
                    controller.countrySelectMethod.value,
                    fontWeight: FontWeight.w900,
                    fontSize: Dimensions.titleLarge * 0.9,
                  ),
                ),
                Icon(
                  color: CustomColor.whiteColor,
                  Icons.arrow_drop_down,
                  size: Dimensions.iconSizeLarge,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
