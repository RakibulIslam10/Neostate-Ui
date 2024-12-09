import '../../../base/utils/basic_import.dart';

class TopMenuWidget extends GetView<ProductDetailsController> {
  const TopMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        TextWidget(
          padding: EdgeInsets.only(
            left: Dimensions.horizontalSize * 0.5,
            right: Dimensions.horizontalSize * 0.5,
            top: Dimensions.horizontalSize * 0.8,
          ),
          Strings.examplesFromThe,
          typographyStyle: TypographyStyle.titleSmall,
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Dimensions.horizontalSize * 0.5),
          child: Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              TextWidget(Strings.menu,
                  fontWeight: FontWeight.bold, fontSize: Dimensions.titleLarge),
              InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    Get.close(1);
                  },
                  child: Icon(Icons.close))
            ],
          ),
        ),
        Divider(
          color: CustomColor.disableColor,
        )
      ],
    );
  }
}
