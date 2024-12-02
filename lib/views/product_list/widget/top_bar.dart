import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/base/utils/basic_import.dart';
import 'package:nfcpay_structure/base/utils/dimensions.dart';
import 'package:nfcpay_structure/base/widgets/country_drop_down.dart';
import 'package:nfcpay_structure/routes/routes.dart';
import 'package:nfcpay_structure/views/discover/controller/discover_controller.dart';
import '../../../base/themes/token.dart';

class TopBar extends GetView<DiscoverController> {
  TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColor.whiteColor,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.2),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Get.offNamed(Routes.navigation);
                  },
                  icon: Icon(Icons.arrow_back)),
              Expanded(
                child: CountryDropDown(
                    decoration: BoxDecoration(),
                    dropdownIconColor: CustomColor.blackColor,
                    inputBoxHeight: Dimensions.inputBoxHeight * 0.8,
                    itemsList: controller.countryList,
                    selectMethod: controller.countrySelectMethod),
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimensions.horizontalSize * 5),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      size: Dimensions.iconSizeLarge * 1.1,
                    )),
              )
            ],
          ),
          Sizes.height.v10,
          _recommendedTextWidget()
        ],
      ),
    );
  }

  _recommendedTextWidget() {
    return Padding(
      padding: EdgeInsets.only(
          left: Dimensions.defaultHorizontalSize * 0.5,
          bottom: Dimensions.defaultHorizontalSize * 0.5),
      child: Wrap(
        spacing: Dimensions.defaultHorizontalSize * 0.2,
        children: [
          Icon(Icons.list),
          TextWidget(
            Strings.recommended,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
