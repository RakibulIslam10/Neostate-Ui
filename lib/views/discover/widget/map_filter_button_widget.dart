import 'package:flutter_svg/svg.dart';
import '../../../assets/asstes.dart';
import '../../../base/utils/basic_import.dart';

class MapFilterButtonWidget extends GetView<DiscoverController> {
  const MapFilterButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            Get.toNamed(Routes.filterScreen);
          },
          child: Container(
            margin: EdgeInsets.only(right: Dimensions.widthSize * 0.2),
            padding: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.5,
                horizontal: Dimensions.horizontalSize * 0.8),
            decoration: BoxDecoration(
              color: CustomColor.whiteColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(Dimensions.radius * 1.5),
                topLeft: Radius.circular(Dimensions.radius * 1.5),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Wrap(
              spacing: Dimensions.heightSize * 0.5,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SvgPicture.asset(
                  Assets.icons.filters,
                  height: Dimensions.heightSize * 1.6,
                ),
                TextWidget(
                  Strings.filter,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ),
        ),
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            controller.isMapWidget.value = !controller.isMapWidget.value;
            print(controller.isMapWidget.value);
          },
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: Dimensions.verticalSize * 0.5,
                horizontal: Dimensions.horizontalSize * 0.8),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(0, 4),
                  ),
                ],
                color: CustomColor.whiteColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(Dimensions.radius * 1.5),
                    topRight: Radius.circular(Dimensions.radius * 1.5))),
            child: Wrap(
              spacing: Dimensions.heightSize * 0.5,
              children: [
                Icon(controller.isMapWidget.value
                    ? Icons.map_outlined
                    : Icons.list),
                TextWidget(
                  controller.isMapWidget.value ? Strings.map : Strings.list,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
