part of 'discover_screen.dart';

class DiscoverMobileScreen extends GetView<DiscoverController> {
  const DiscoverMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.whiteColor,
      appBar: CustomAppBar(
        '',
        leading: TopBarTitleWidget(),
        appbarSize: Dimensions.appBarHeight * 1.2,
        leadingWidth: MediaQuery.of(context).size.width,
        action: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: Dimensions.iconSizeLarge,
            ),
          ),
        ],
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: crossStart,
        children: [
          if (controller.isMapWidget.value) ...[
            RecommendedWidget(),
            ProductListWidget(),
          ] else ...[
            MapWidget(),
          ],
        ],
      ),
    );
  }
}
