import '../../../base/utils/basic_import.dart';

class ListFoodCard extends GetView<DiscoverController> {
  const ListFoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              print(index);
              return Column(
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.toNamed(Routes.ProductDetails);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          vertical: Dimensions.verticalSize * 0.4,
                          horizontal: Dimensions.horizontalSize * 0.5),
                      color: CustomColor.whiteColor,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CustomImageWidget(
                                path:'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
                                height: MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.height * 0.1,
                                borderRadius: BorderRadius.circular(
                                    Dimensions.radius * 1.6),
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
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
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
                        ],
                      ),
                    ),
                  ),
                  Divider(height: 2,
                    color: CustomColor.disableColor.withOpacity(0.5),
                  )
                ],
              );
            },
            childCount: 50,
          ),
        ),
      ],
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
