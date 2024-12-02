import '../../../base/utils/basic_import.dart';

class DayButtonWidget extends GetView<FilterController> {
  const DayButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(
            Strings.day,
            padding: EdgeInsets.only(bottom: Dimensions.verticalSize * 0.4),
            fontWeight: FontWeight.bold,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                7,
                (index) {
                  return InkWell(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () {
                        controller.daySelected.value = index;
                      },
                      child: Obx(
                        () => Container(
                          margin: EdgeInsets.only(
                            right: Dimensions.horizontalSize * 0.2,
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: Dimensions.verticalSize * 0.1,
                              horizontal: Dimensions.horizontalSize * 0.5),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius * 2),
                              color: controller.daySelected == index
                                  ? CustomColor.primary
                                  : CustomColor.whiteColor,
                              border: Border.fromBorderSide(BorderSide(
                                  color: CustomColor.disableColor
                                      .withOpacity(0.6)))),
                          child: TextWidget(
                            Strings.today,
                            color: controller.daySelected.value == index
                                ? CustomColor.blackColor
                                : CustomColor.blackColor.withOpacity(0.5),
                            fontSize: Dimensions.titleSmall,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
