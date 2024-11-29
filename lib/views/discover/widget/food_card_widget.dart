import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/base/utils/dimensions.dart';
import 'package:nfcpay_structure/base/utils/size.dart';
import 'package:nfcpay_structure/base/widgets/custom_image_widget.dart';
import 'package:nfcpay_structure/base/widgets/text_widget.dart';
import 'package:nfcpay_structure/languages/strings.dart';
import 'package:nfcpay_structure/routes/routes.dart';
import 'package:nfcpay_structure/views/discover/controller/discover_controller.dart';
import '../../../base/themes/token.dart';

class FoodCardWidget extends GetView<DiscoverController> {
  const FoodCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: Dimensions.horizontalSize * 0.5),
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              4,
              (index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed(Routes.ProductDetails);
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Container(
                    margin:
                        EdgeInsets.only(right: Dimensions.horizontalSize * 0.5),
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height * 0.12,
                    padding: EdgeInsets.symmetric(
                        vertical: Dimensions.verticalSize * 0.4,
                        horizontal: Dimensions.heightSize * 0.5),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius * 0.8),
                      color: CustomColor.whiteColor,
                    ),
                    child: Row(
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
                                  color: CustomColor.primary2,
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
                                _drinkButton(context)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            )),
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
        color: CustomColor.primary2,
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
        color: CustomColor.primary2,
      ),
      child: TextWidget(
        Strings.freeDrink,
        fontWeight: FontWeight.bold,
        fontSize: Dimensions.titleSmall * 0.8,
      ),
    );
  }
}
