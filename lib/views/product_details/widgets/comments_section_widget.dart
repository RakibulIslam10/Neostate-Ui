import '../../../base/utils/basic_import.dart';

class CommentsSectionWidget extends GetView<ProductDetailsController> {
  const CommentsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          3,
              (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
              child: Column(
                crossAxisAlignment: crossStart,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: Dimensions.horizontalSize * 0.5,
                    children: [
                      Container(
                        padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: CustomColor.blackColor.withOpacity(0.1)),
                        child: TextWidget(
                          'T',
                          fontSize: Dimensions.titleSmall,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextWidget(
                        'Tim',
                        fontWeight: FontWeight.bold,
                        fontSize: Dimensions.titleSmall,
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      ...List.generate(
                        5,
                            (index) {
                          return Icon(
                            Icons.star,
                            size: Dimensions.iconSizeSmall * 1.8,
                            color: CustomColor.primary,
                          );
                        },
                      )
                    ],
                  ),
                  TextWidget(
                    Strings.description2,
                    fontSize: Dimensions.titleSmall,
                  ),
                  Divider(
                    color: CustomColor.disableColor,
                  ),
                ],
              ),
            );
          },
        ),
        _buttonWidget(),
      ]
    );
  }

   _buttonWidget() {
    return Padding(
        padding: EdgeInsets.only(
          left: Dimensions.defaultHorizontalSize,
          top: Dimensions.verticalSize * 0.6,
          right: Dimensions.defaultHorizontalSize,
        ),
        child: PrimaryButton(
          borderColor: CustomColor.blackColor.withOpacity(0.1),
          buttonColor: CustomColor.blackColor.withOpacity(0.1),
          buttonTextColor: CustomColor.blackColor,
          title: '${Strings.allReview} ${'(14)'}',
          onPressed: () {},
        ),
      );
  }
}
