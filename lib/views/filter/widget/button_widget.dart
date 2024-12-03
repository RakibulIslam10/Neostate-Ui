import '../../../base/utils/basic_import.dart';

class ButtonWidget extends GetView<FilterController> {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.horizontalSize * 0.5,
          vertical: Dimensions.verticalSize),
      child: PrimaryButton(
        buttonTextColor: CustomColor.blackColor,
        buttonColor: CustomColor.primary,
        title: Strings.apply,
        onPressed: () {
          Get.offNamed(Routes.navigation);
        },
        borderColor: CustomColor.primary,
      ),
    );
  }
}
