import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nfcpay_structure/views/filter/controller/filter_controller.dart';
import 'package:nfcpay_structure/views/product_details/controller/product_details_controller.dart';
import '../../../base/utils/basic_import.dart';

class TimeButtonWidget extends GetView<FilterController> {
  const TimeButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(
            Strings.time,
            padding: EdgeInsets.only(
                bottom: Dimensions.verticalSize * 0.4,
                top: Dimensions.heightSize),
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
                        controller.timeSelected.value = index;
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
                              color: controller.timeSelected.value == index
                                  ? CustomColor.primary2
                                  : CustomColor.whiteColor,
                              border: Border.fromBorderSide(BorderSide(
                                  color: CustomColor.disableColor
                                      .withOpacity(0.6)))),
                          child: TextWidget(
                            '0:30',
                            color: controller.timeSelected.value == index
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
