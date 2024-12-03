import '../../../base/utils/basic_import.dart';

class ContactAndOpeningWidget extends GetView<ProductDetailsController> {
  const ContactAndOpeningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        _contactWidget(),
        _openingHours(),
        _reportAndIssue(),
      ],
    );
  }

  _reportAndIssue() {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(bottom: Dimensions.verticalSize),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: Dimensions.heightSize * 0.8,
          children: [
            Icon(
              Icons.message,
              size: Dimensions.iconSizeSmall * 2,
            ),
            TextWidget(
              onTap: () {
                Get.toNamed(Routes.reportScreen);
              },
              Strings.reportIssue,
              fontWeight: FontWeight.w900,
              fontSize: Dimensions.titleSmall,
            )
          ],
        ),
      ),
    );
  }

  _openingHours() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: Dimensions.defaultHorizontalSize * 0.5,
          ),
          child: Wrap(
            children: [
              Icon(
                Icons.access_time_sharp,
              ),
              TextWidget(
                padding: EdgeInsets.only(
                  left: Dimensions.defaultHorizontalSize * 0.5,
                ),
                Strings.openingHours,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
                left: Dimensions.horizontalSize * 1.6,
                right: Dimensions.defaultHorizontalSize),
            child: Column(
              children: List.generate(
                7,
                (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: Dimensions.verticalSize * 0.2),
                    child: Row(
                      mainAxisAlignment: mainSpaceBet,
                      children: [
                        TextWidget(
                          'Monday',
                          fontSize: Dimensions.titleSmall,
                          color: CustomColor.disableColor,
                        ),
                        TextWidget(
                          '09:00-18:00',
                          fontSize: Dimensions.titleSmall,
                        )
                      ],
                    ),
                  );
                },
              ),
            )),
        Sizes.height.v10,
      ],
    );
  }

  _contactWidget() {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: Dimensions.defaultHorizontalSize * 0.5,
              top: Dimensions.heightSize),
          child: Wrap(
            children: [
              Icon(
                Icons.phone,
              ),
              TextWidget(
                padding: EdgeInsets.only(
                  left: Dimensions.defaultHorizontalSize * 0.5,
                ),
                Strings.contact,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
        TextWidget(
          padding: EdgeInsets.only(left: Dimensions.horizontalSize * 1.6),
          Strings.number,
          fontSize: Dimensions.titleSmall,
        ),
        Sizes.height.v10,
      ],
    );
  }
}
