part of 'product_details_screen.dart';

class ProductDetailsMobileScreen extends GetView<ProductDetailsController> {
  const ProductDetailsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ImageWidgets(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              TextHeadingWidget(),
              MenuButtonWidget(),
              InfoBoxWidget(Strings.twoForOne, Strings.description),
              InfoBoxWidget(Strings.twoForOneHotDrink, Strings.description2),
              RatingReviewsWidget(),
              CommentsSectionWidget(),
              LocationMapWidget(),
              ContactAndOpeningWidget(),
            ],
          ),
        ),
      ],
    );
  }
}
