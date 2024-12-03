import '../../../base/utils/basic_import.dart';

class RatingReviewsWidget extends GetView<ProductDetailsController> {
  const RatingReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric( horizontal: Dimensions.defaultHorizontalSize * 0.5,),
      child:  Column(
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(
            Strings.ratingsAndReviews,
            fontSize: Dimensions.titleLarge,
            fontWeight: FontWeight.w900,
          ),
          _ratingAndStartWidget(),
          TextWidget(
            Strings.ratingAndReview,
            fontSize: Dimensions.titleSmall,
          ),
          Divider(color: CustomColor.disableColor),
        ],
      ),
    );
  }


   _ratingAndStartWidget() {
    return Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            TextWidget(
              Strings.ratings,
              fontSize: Dimensions.titleLarge * 2,
              fontWeight: FontWeight.w900,
            ),
            ...List.generate(
              5,
                  (index) {
                return Icon(
                  Icons.star,
                  size: Dimensions.iconSizeLarge * 1.2,
                  color: CustomColor.primary,
                );
              },
            )
          ],
        );
  }
}
