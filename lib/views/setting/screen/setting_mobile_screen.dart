part of 'setting_screen.dart';

class SettingMobileScreen extends GetView<SettingController> {
  const SettingMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        Strings.Settings,
        centerTitle: false,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: Dimensions.horizontalSize * 0.5),
        child: Column(
          children: [
            AccountInfoWidget(),
            SubscriptionButtonsWidget(),
            Spacer(),
            SignOutButtonWidget()

          ],
        ),
      ),
    );
  }
}
