import '../../../base/utils/basic_import.dart';

class TextHeadingWidget extends GetView<ProductDetailsController> {
  const TextHeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: Dimensions.defaultHorizontalSize),
      child: Column(
        crossAxisAlignment: crossStart,
        children: [
          TextWidget(

            Strings.pizzeriaMimmo,
            fontSize: Dimensions.titleLarge * 2,
            fontWeight: FontWeight.w900,
          ),
          TextWidget(Strings.italianPastaPizza),
          TextWidget('${Strings.ccc} ${Strings.closed}'),
        ],
      ),
    );
  }
}
