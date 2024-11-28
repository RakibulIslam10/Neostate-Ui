part of 'discover_screen.dart';

class DiscoverMobileScreen extends GetView<DiscoverController> {
  const DiscoverMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return Column(
      children: [
        TopBarWidget(),
        Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
            GoogleMap(
              initialCameraPosition: controller.initialCameraPosition.value,
              onTap: (argument) {},
            ),
              Container(
                padding: EdgeInsets.symmetric(vertical: Dimensions.verticalSize,horizontal: Dimensions.defaultHorizontalSize,),
              // color: CustomColor.,

              )

          ],)
        ),
      ],
    );
  }
}
