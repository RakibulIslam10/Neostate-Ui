import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/base/utils/dimensions.dart';
import 'package:nfcpay_structure/base/widgets/country_drop_down.dart';
import 'package:nfcpay_structure/views/discover/controller/discover_controller.dart';
import '../../../base/themes/token.dart';

class TopBarWidget extends GetView<DiscoverController> {
  TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Dimensions.verticalSize),
      color: CustomColor.whiteColor,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.2),
      child: Row(
        children: [
          Expanded(
            child: CountryDropDown(
                decoration: BoxDecoration(),
                dropdownIconColor: CustomColor.blackColor,
                inputBoxHeight: Dimensions.inputBoxHeight * 0.8,
                itemsList: controller.countryList,
                selectMethod: controller.countrySelectMethod),
          ),
          Padding(
            padding: EdgeInsets.only(left: Dimensions.horizontalSize * 6.5),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          )
        ],
      ),
    );
  }
}
