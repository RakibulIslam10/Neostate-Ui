part of 'discover_screen.dart';

class DiscoverMobileScreen extends GetView<DiscoverController> {
  const DiscoverMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(context),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          if (controller.isMapWidget.value) ...[
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
      title: InkWell(
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
            Obx(
              () => TextWidget(
                controller.countrySelectMethod.value,
                fontWeight: FontWeight.w900,
                fontSize: Dimensions.titleLarge * 0.9,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              size: Dimensions.iconSizeLarge,
            )
          ],
        ),
      ),
    );
  }

}
