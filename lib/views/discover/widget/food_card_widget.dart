import '../../../base/utils/basic_import.dart';

class FoodCardWidget extends GetView<DiscoverController> {
  const FoodCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: PageView.builder(
        itemCount: 50,
        controller: PageController(viewportFraction: 0.9),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed(Routes.ProductDetails);
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimensions.horizontalSize * 0.3,
              ),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.12,
              padding: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.4,
                horizontal: Dimensions.horizontalSize * 0.5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius * 0.8),
                color: CustomColor.whiteColor,
              ),
              child: Row(
                children: [
                  CustomImageWidget(
                    path:
                        'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.height * 0.1,
                    borderRadius:
                        BorderRadius.circular(Dimensions.radius * 1.6),
                  ),
                  Sizes.width.v10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                          _pizzaButton(context),
                          _drinkButton(context),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  _pizzaButton(BuildContext context) {
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

  _drinkButton(BuildContext context) {
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
