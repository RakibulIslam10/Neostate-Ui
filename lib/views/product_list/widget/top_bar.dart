import '../../../base/utils/basic_import.dart';

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
                    fieldPadding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.4),
                    decoration: BoxDecoration(),
                    dropdownIconColor: CustomColor.blackColor,
                    inputBoxHeight: Dimensions.inputBoxHeight * 0.8,
                    itemsList: controller.countryList,
                    selectMethod: controller.countrySelectMethod),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: Dimensions.iconSizeLarge * 1.1,
                  ))
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
