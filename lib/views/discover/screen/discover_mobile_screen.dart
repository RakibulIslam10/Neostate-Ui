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
    return AppBar(
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      title: TopBarTitleWidget(),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search_rounded,
              size: Dimensions.iconSizeLarge,
            ),)
      ],
    );
  }
}
