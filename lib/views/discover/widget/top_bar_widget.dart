import '../../../base/utils/basic_import.dart';

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
                fieldPadding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.5),
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
    );
  }
}
