import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/themes/token.dart';
import '../../../base/utils/basic_import.dart';
import '../../../base/widgets/text_widget.dart';
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
              Icon(icon,
                  color: controller.selectedIndex.value == index
                      ? CustomColor.blackColor
                      : CustomColor.blackColor.withOpacity(0.5)),
              TextWidget(
                label,
                style: TextStyle(
                  fontSize: Dimensions.labelSmall,
                  fontWeight: FontWeight.bold,
                ),
                color: controller.selectedIndex.value == index
                    ? CustomColor.blackColor
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
