import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:nfcpay_structure/views/product_details/controller/product_details_controller.dart';
import '../../../base/utils/basic_import.dart';

class TextHeadingWidget extends GetView<ProductDetailsController> {
  const TextHeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(

            Strings.pizzeriaMimmo,
            fontSize: Dimensions.titleLarge * 2,
            fontWeight: FontWeight.w900,
          ),
          TextWidget(Strings.italianPastaPizza),
          TextWidget('${Strings.ccc} ${Strings.closed}'),
        ],
      ),
    );
  }
}
