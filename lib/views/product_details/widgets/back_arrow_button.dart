import '../../../base/utils/basic_import.dart';

class BackArrowButton extends GetView<ProductDetailsController> {
  const BackArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Get.offNamed(Routes.navigation);
      },
      child: Container(
          margin: EdgeInsets.all(Dimensions.paddingSize * 0.25),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: CustomColor.whiteColor),
          child: Icon(Icons.arrow_back)),
    );
  }
}
