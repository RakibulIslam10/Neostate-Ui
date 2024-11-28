import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nfcpay_structure/views/product_details/controller/product_details_controller.dart';
import '../../../base/utils/basic_import.dart';

class MenuButtonWidget extends GetView<ProductDetailsController> {
  const MenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
          vertical: Dimensions.verticalSize * 0.4),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.2,
                horizontal: Dimensions.horizontalSize * 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius * 2),
                color: CustomColor.whiteColor,
                border: Border.fromBorderSide(
                    BorderSide(color: CustomColor.disableColor))),
            child: Wrap(
              spacing: Dimensions.horizontalSize * 0.2,
              children: [Icon(Icons.menu), TextWidget(Strings.menu,fontWeight: FontWeight.w500,)],
            ),
          ),
          Wrap(
            spacing: Dimensions.horizontalSize * 0.5,
            children: [
              Container(
                padding: EdgeInsets.all(Dimensions.paddingSize * 0.2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomColor.whiteColor,
                    border: Border.fromBorderSide(
                        BorderSide(color: CustomColor.disableColor))),
                child: Icon(Icons.favorite_border),
              ),
              Container(
                padding: EdgeInsets.all(Dimensions.paddingSize * 0.2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: CustomColor.whiteColor,
                    border: Border.fromBorderSide(
                        BorderSide(color: CustomColor.disableColor))),
                child: Icon(Icons.share),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
