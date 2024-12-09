import 'package:sticky_headers/sticky_headers/widget.dart';
import '../../../base/utils/basic_import.dart';

class BottomSheetInfoWidget extends GetView<ProductDetailsController> {
  const BottomSheetInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final items = controller.items[index];
                return StickyHeader(
                  header: Container(
                    height: Dimensions.heightSize * 3,
                    color: CustomColor.whiteColor,
                    padding: EdgeInsets.symmetric(
                        horizontal: 16.0),
                    child: TextWidget(
                      items.name,
                      fontWeight: FontWeight.bold,
                      fontSize: Dimensions.titleLarge * 0.9,
                    ),
                  ),
                  content: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal:
                        Dimensions.horizontalSize * 0.5),
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          trailing: TextWidget(
                            color: CustomColor.blackColor
                                .withOpacity(0.7),
                            '\$${items.price}',
                          ),
                          subtitle: TextWidget(
                            items.description,
                            fontSize: Dimensions.titleSmall,
                            color: CustomColor.blackColor
                                .withOpacity(0.4),
                          ),
                        ),
                        Divider(
                          color: CustomColor.disableColor,
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: controller.items.length,
            ),
          ),
        ],
      ),
    );
  }
}
