import '../../../base/utils/basic_import.dart';

class TopAppBarWidget extends GetView<FilterController> {
  const TopAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.horizontalSize * 0.5,
          vertical: Dimensions.verticalSize * 0.5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: mainSpaceBet,
            children: [
              TextWidget(
                Strings.filter,
                fontWeight: FontWeight.w800,
                fontSize: Dimensions.titleLarge,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: Dimensions.paddingSize * 0.3,
                    horizontal: Dimensions.heightSize * 1.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius * 2),
                  color: CustomColor.disableColor.withOpacity(0.3),
                ),
                child: TextWidget(
                  onTap: () {
                    controller.resetAllValue();
                  },
                  Strings.reset,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Sizes.height.v10,
          Divider(
            color: CustomColor.disableColor.withOpacity(0.5),
          )
        ],
      ),
    );
  }
}
