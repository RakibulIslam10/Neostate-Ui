part of 'edit_profile_screen.dart';

class EditProfileTabletScreen extends GetView<EditProfileController> {
  const EditProfileTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('EditProfile Tablet Screen'),
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
