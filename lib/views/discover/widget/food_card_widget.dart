import '../../../base/utils/basic_import.dart';
import '../model/food_card_model.dart';

class FoodCardWidget extends GetView<DiscoverController> {
  const FoodCardWidget(this.foodCard, {super.key});
  final FoodCardModel? foodCard;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: PageView.builder(
        itemCount: 20,
        controller: controller.pageController,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.toNamed(Routes.ProductDetails);
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimensions.horizontalSize * 0.2,
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
                    path: foodCard!.imagePath,
                    fit: BoxFit.cover,
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.height * 0.1,
                    borderRadius: BorderRadius.circular(Dimensions.radius * 1.6),
                  ),
                  Sizes.width.v10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        foodCard!.title,
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
                            ' ${foodCard!.rating} ${Strings.rating}${foodCard!.title}',
                            fontSize: Dimensions.titleSmall * 0.9,
                            color: CustomColor.disableColor,
                          )
                        ],
                      ),
                      Sizes.height.v5,
                      Wrap(
                        spacing: Dimensions.horizontalSize * 0.5,
                        children: [
                          _pizzaButton(context, foodCard!.offers[0]),
                          _drinkButton(context, foodCard!.offers[1]),
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

  _pizzaButton(BuildContext context, String offer) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.horizontalSize * 0.4,
          vertical: Dimensions.heightSize * 0.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius * 2),
        color: CustomColor.primary,
      ),
      child: TextWidget(
        offer,
        fontWeight: FontWeight.bold,
        fontSize: Dimensions.titleSmall * 0.8,
      ),
    );
  }

  _drinkButton(BuildContext context, String offer) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.horizontalSize * 0.4,
          vertical: Dimensions.heightSize * 0.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.radius * 2),
        color: CustomColor.primary,
      ),
      child: TextWidget(
        offer,
        fontWeight: FontWeight.bold,
        fontSize: Dimensions.titleSmall * 0.8,
      ),
    );
  }
}