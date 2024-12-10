part of 'edit_profile_screen.dart';

class EditProfileMobileScreen extends GetView<EditProfileController> {
  const EditProfileMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        Strings.editProfile,
        centerTitle: false,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ProfileImagePick(),
          PrimaryInputWidget(
            title: Strings.firstName,
              controller: controller.firstNameController,
              hintText: Strings.firstName)
        ],
      ),
    );
  }
}
