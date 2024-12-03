import '../../../base/utils/basic_import.dart';

class InfoBoxWidget extends GetView<ProductDetailsController> {
  const InfoBoxWidget(this.text, this.description, {super.key});

  final String text;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize,
          vertical: Dimensions.verticalSize * 0.5),
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize * 0.5,
          vertical: Dimensions.verticalSize * 0.5),
      decoration: BoxDecoration(
          color: CustomColor.primary,
          borderRadius: BorderRadius.circular(Dimensions.radius * 0.8)),
      child: Column(
        children: [
          _heading_text(text),
          Row(
            mainAxisAlignment: mainCenter,
            children: [
              _horizontalButton(Strings.cbBenefit, Icons.card_giftcard),
              Sizes.width.v10,
              _horizontalButton(Strings.days, Icons.card_giftcard),
              Sizes.width.v10,
              _horizontalButton(Strings.onSite, Icons.location_pin),
            ],
          ),
          TextWidget(description, fontSize: Dimensions.titleSmall),
          Sizes.height.v10,
          PrimaryButton(
            buttonTextColor: CustomColor.blackColor,
            borderColor: Colors.transparent,
            buttonColor: CustomColor.blackColor.withOpacity(0.1),
            title: Strings.bookDeal,
            onPressed: () {},
          )
        ],
      ),
    );
  }

  _horizontalButton(
    String title,
    IconData icons,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.5),
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.horizontalSize * 0.25,
        vertical: Dimensions.verticalSize * 0.1,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius * 2),
        border: Border.fromBorderSide(
          BorderSide(
            width: 2,
            color: CustomColor.disableColor.withOpacity(0.4),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: mainCenter,
        children: [
          Icon(
            icons,
            size: Dimensions.iconSizeSmall * 2,
          ),
          TextWidget(
            title,
            fontSize: Dimensions.titleSmall,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }

  _heading_text(text) {
    return Row(
      mainAxisAlignment: mainSpaceBet,
      children: [
        TextWidget(
          text,
          fontWeight: FontWeight.w900,
        ),
        Icon(Icons.info),
      ],
    );
  }
}
