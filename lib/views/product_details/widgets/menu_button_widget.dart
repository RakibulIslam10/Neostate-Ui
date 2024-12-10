import 'package:nfcpay_structure/views/product_details/widgets/bottom_sheet_info_widget.dart';
import 'package:nfcpay_structure/views/product_details/widgets/top_menu_widget.dart';
import 'package:share_plus/share_plus.dart';
import '../../../base/utils/basic_import.dart';

class MenuButtonWidget extends GetView<ProductDetailsController> {
  const MenuButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize * 0.5,
          vertical: Dimensions.verticalSize * 0.4),
      child: Row(
        mainAxisAlignment: mainSpaceBet,
        children: [
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(Dimensions.radius * 0.6),
                  ),
                ),
                context: context,
                builder: (context) {
                  return Column(
                    children: [TopMenuWidget(), BottomSheetInfoWidget()],
                  );
                },
              );
              // Get.toNamed(Routes.food_menuScreen);
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: Dimensions.verticalSize * 0.2,
                  horizontal: Dimensions.horizontalSize * 3.4),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius * 2),
                  border: Border.fromBorderSide(BorderSide(
                      width: 2,
                      color: CustomColor.disableColor.withOpacity(0.5)))),
              child: Wrap(
                spacing: Dimensions.horizontalSize * 0.2,
                children: [
                  Icon(Icons.list),
                  TextWidget(
                    Strings.menu,
                    fontWeight: FontWeight.w500,
                  )
                ],
              ),
            ),
          ),
          Wrap(
            spacing: Dimensions.horizontalSize * 0.5,
            children: [
              InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    controller.isSelected.value = !controller.isSelected.value;
                  },
                  child: Obx(
                    () => Container(
                      padding: EdgeInsets.all(Dimensions.paddingSize * 0.2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.fromBorderSide(
                          BorderSide(
                            width: 2,
                            color: CustomColor.disableColor.withOpacity(0.5),
                          ),
                        ),
                      ),
                      child: controller.isSelected.value
                          ? Icon(
                              Icons.favorite,
                              color: Colors.pink,
                            )
                          : Icon(
                              Icons.favorite_outline,
                            ),
                    ),
                  )),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: (){
                  Share.share('Share');
                },
                child: Container(
                  padding: EdgeInsets.all(Dimensions.paddingSize * 0.2),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.fromBorderSide(BorderSide(
                          width: 2,
                          color: CustomColor.disableColor.withOpacity(0.5)))),
                  child: Icon(Icons.share),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
