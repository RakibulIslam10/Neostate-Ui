part of 'profile_screen.dart';

class ProfileMobileScreen extends GetView<ProfileController> {
  const ProfileMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ProfileWidget(),
          LabelBoxWidget(),
          ProfileInfoBoxWidget(),
          InfoListWidget()
        ],
      ),
    );
  }
}
