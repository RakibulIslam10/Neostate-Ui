import '../../../base/utils/basic_import.dart';

class RecommendedWidget extends GetView<DiscoverController> {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        showModalBottomSheet(
          backgroundColor: CustomColor.whiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(Dimensions.radius * 0.6),
            ),
          ),
          context: context,
          builder: (context) {
            return Obx(
                  () => Column(
                children: List.generate(
                  controller.textItem.length,
                      (index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.horizontalSize * 0.5,
                        vertical: Dimensions.verticalSize * 0.5,
                      ),
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          controller.isSelected.value = index; // Corrected assignment
                        Get.close(1);
                        },
                        child: Row(
                          children: [
                            if (controller.isSelected.value == index) ...[
                              Icon(
                                Icons.check_circle,
                              ),
                            ],
                            TextWidget(
                              padding: EdgeInsets.only(
                                left: controller.isSelected.value == index
                                    ? Dimensions.horizontalSize * 0.4
                                    : Dimensions.horizontalSize* 1.4
                              ),
                              color: controller.isSelected.value == index
                                  ? CustomColor.blackColor
                                  : CustomColor.blackColor.withOpacity(0.5),
                              controller.textItem[index],
                              fontWeight: FontWeight.w900,
                              fontSize: Dimensions.titleLarge * 0.9,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            );

          },
        );
      },
      child: Wrap(
        spacing: Dimensions.horizontalSize * 0.2,
        children: [
          Padding(
            padding: EdgeInsets.only(left: Dimensions.horizontalSize * 0.5),
            child: Icon(
              Icons.menu_open_outlined,
              size: Dimensions.iconSizeSmall * 2.5,
            ),
          ),
          TextWidget(
            Strings.recommended,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
