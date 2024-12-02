import '../../../base/utils/basic_import.dart';

class ProductListWidget extends GetView<DiscoverController> {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
          children: List.generate(
        10,
        (index) {
          return InkWell(
            onTap: () {
              Get.toNamed(Routes.ProductDetails);
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                  vertical: Dimensions.verticalSize * 0.4,
                  horizontal: Dimensions.heightSize * 0.5),
              color: CustomColor.whiteColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      CustomImageWidget(
                        path:
                            'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.height * 0.16,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius * 1.5),
                      ),
                      Sizes.width.v10,
                      Column(
                        crossAxisAlignment: crossStart,
                        mainAxisAlignment: mainCenter,
                        children: [
                          TextWidget(
                            Strings.pizzeriaMimmo,
                            fontWeight: FontWeight.bold,
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: CustomColor.primary,
                                size: Dimensions.iconSizeSmall * 2,
                              ),
                              TextWidget(
                                ' ${Strings.rating} ${Strings.mi}${Strings.pizza}',
                                fontSize: Dimensions.titleSmall * 0.9,
                                color: CustomColor.disableColor,
                              )
                            ],
                          ),
                          Sizes.height.v5,
                          Wrap(
                            spacing: Dimensions.horizontalSize * 0.5,
                            children: [
                              _firstButton(context),
                              _secondButton(context),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Sizes.height.v5,
                  Divider(color: CustomColor.disableColor),
                ],
              ),
            ),
          );
        },
      )),
    );
  }

  _firstButton(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Dimensions.heightSize * 2.5,
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius * 2),
        color: CustomColor.primary,
      ),
      child: TextWidget(
        Strings.twoForOne,
        fontWeight: FontWeight.bold,
        fontSize: Dimensions.titleSmall * 0.8,
      ),
    );
  }

  _secondButton(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: Dimensions.heightSize * 2.5,
      width: MediaQuery.of(context).size.width * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius * 2),
        color: CustomColor.primary,
      ),
      child: TextWidget(
        Strings.freeDrink,
        fontWeight: FontWeight.bold,
        fontSize: Dimensions.titleSmall * 0.8,
      ),
    );
  }
}
