part of 'profile_screen.dart';

class ProfileMobileScreen extends GetView<ProfileController> {
  const ProfileMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('Profile Mobile Screen'),
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
