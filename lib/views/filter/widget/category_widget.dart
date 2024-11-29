import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nfcpay_structure/views/filter/controller/filter_controller.dart';
import 'package:nfcpay_structure/views/product_details/controller/product_details_controller.dart';
import '../../../base/utils/basic_import.dart';

class CategoryWidget extends GetView<FilterController> {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Sizes.height.v30,
        TextWidget(
          Strings.category,
          padding: EdgeInsets.only(bottom: Dimensions.verticalSize * 0.4),
          fontWeight: FontWeight.bold,
        ),
        Wrap(
          children: List.generate(
            20,
            (index) {
              return InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {
                    controller.categorySelected.value = index;
                  },
                  child: Obx(
                    () => Container(
                        margin: EdgeInsets.only(
                            right: Dimensions.horizontalSize * 0.2,
                            top: Dimensions.verticalSize * 0.4),
                        padding: EdgeInsets.symmetric(
                            vertical: Dimensions.verticalSize * 0.2,
                            horizontal: Dimensions.horizontalSize * 0.5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius * 2),
                            color: controller.categorySelected.value == index
                                ? CustomColor.primary2
                                : CustomColor.disableColor.withOpacity(0.3),
                            border: Border.fromBorderSide(BorderSide(
                                color: CustomColor.disableColor
                                    .withOpacity(0.6)))),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            TextWidget('🥞 '),
                            TextWidget(
                              'Breakfast',
                              color: CustomColor.blackColor,
                              fontSize: Dimensions.titleSmall,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        )),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
