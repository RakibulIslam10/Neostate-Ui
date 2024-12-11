part of 'edit_profile_screen.dart';

class EditProfileMobileScreen extends GetView<EditProfileController> {
  const EditProfileMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        Strings.editProfile,
        centerTitle: false,
        action: [
          TextWidget(
            Strings.save,
            color: CustomColor.disableColor,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Sizes.height.v40,
            ProfileImagePick(),
            UserInfoFieldWidget(),
          ],
        ),
      ),
    );
  }
}
