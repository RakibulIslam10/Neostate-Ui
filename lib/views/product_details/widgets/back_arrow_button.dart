import '../../../base/utils/basic_import.dart';

class BackArrowButton extends GetView<ProductDetailsController> {
  const BackArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.paddingSize * 0.4),
      decoration:
      BoxDecoration(shape: BoxShape.circle, color: CustomColor.whiteColor),
      child: BackButtonWidget(
        onTap: () {
          Get.off(Routes.navigation);
        },
      ),
    );
  }
}
