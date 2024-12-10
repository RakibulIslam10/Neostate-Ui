part of 'discover_screen.dart';

class DiscoverMobileScreen extends GetView<DiscoverController> {
  const DiscoverMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.whiteColor,
      appBar: _appBarWidget(context),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: crossStart,
        children: [
          if (controller.isMapWidget.value) ...[
            Sizes.height.v10,
            RecommendedWidget(),
            ProductListWidget(),
          ] else ...[
            MapWidget(),
          ],
        ],
      ),
    );
  }

   _appBarWidget(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(Dimensions.appBarHeight * 2), // Height of the AppBar
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            scrolledUnderElevation: 0,
            automaticallyImplyLeading: false,
            title: TopBarTitleWidget(),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_rounded,
                  size: Dimensions.iconSizeLarge,
                ),
              )
            ],
          ),
          // Custom shadow at the bottom
          Container(
            height: 1, // Height of the shadow
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: CustomColor.whiteColor,
                  blurRadius: 10,
                  spreadRadius: 11,
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
