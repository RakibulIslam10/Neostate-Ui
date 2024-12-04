import '../../../base/utils/basic_import.dart';
import '../controller/navigation_controller.dart';

class BottomItem extends StatelessWidget {
  BottomItem({super.key, this.icon, required this.label, this.index});

  final IconData? icon;
  final String label;
  final int? index;
  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.selectedIndex.value = index!;
      },
      child: Obx(
        () => SizedBox(
          width: Dimensions.widthSize * 5.8,
          child: Column(
            mainAxisAlignment: mainCenter,
            children: [
              Icon(
                icon,
                color: controller.selectedIndex.value == index
                    ? (index == 1
                        ? CustomColor.whiteColor
                        : CustomColor.blackColor)
                    : (index == 1
                        ? CustomColor.disableColor
                        : CustomColor.disableColor),
              ),
              TextWidget(
                label,
                style: TextStyle(
                  fontSize: Dimensions.labelSmall,
                  fontWeight: FontWeight.w900,
                ),
                color: controller.selectedIndex.value == index
                    ? (index == 1
                        ? CustomColor.whiteColor
                        : CustomColor.blackColor)
                    : CustomColor.disableColor,
              ),
              Sizes.height.v5,
            ],
          ),
        ),
      ),
    );
  }
}
