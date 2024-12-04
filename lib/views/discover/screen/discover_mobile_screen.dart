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
        MapWidget(),
      ],
    );
  }

}

