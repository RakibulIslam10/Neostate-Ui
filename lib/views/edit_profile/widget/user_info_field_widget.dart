import 'package:nfcpay_structure/views/edit_profile/controller/edit_profile_controller.dart';
import '../../../base/utils/basic_import.dart';
import '../../../base/widgets/primary_input_widget.dart';

class UserInfoFieldWidget extends GetView<EditProfileController> {
  const UserInfoFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.horizontalSize * 0.5),
      child: Column(
        children: [
          PrimaryInputWidget(
            hintText: '',
            title: Strings.firstName,
            controller: controller.firstNameController,
            borderWidth: 1.2,
            showBorderSide: true,
            radius: Dimensions.radius * 4,
          ),
          PrimaryInputWidget(
            hintText: '',
            title: Strings.lastName,
            controller: controller.lastNameController,
            borderWidth: 1.2,
            showBorderSide: true,
            radius: Dimensions.radius * 4,
          ),
          PrimaryInputWidget(
            hintText: '',
            title: Strings.eMail,
            controller: controller.emailNameController,
            borderWidth: 1.2,
            showBorderSide: true,
            radius: Dimensions.radius * 4,
          ),
          PrimaryInputWidget(
            hintText: '',
            title: Strings.postCode,
            controller: controller.postcodeNameController,
            borderWidth: 1.2,
            showBorderSide: true,
            radius: Dimensions.radius * 4,
          ),
          Sizes.height.v20,
          TextButton(
              onPressed: () {},
              child: TextWidget(
                Strings.deleteAccount,
                color: CustomColor.rejected,
              )),
        ],
      ),
    );
  }
}
