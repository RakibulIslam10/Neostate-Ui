part of 'setting_screen.dart';

class SettingMobileScreen extends GetView<SettingController> {
  const SettingMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('Setting Mobile Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
