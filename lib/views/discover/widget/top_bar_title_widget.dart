import '../../../base/utils/basic_import.dart';
import 'bottom_sheet_widget.dart';

class TopBarTitleWidget extends GetView<DiscoverController> {
  const TopBarTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            showModalBottomSheet(
              useSafeArea: true,
              showDragHandle: true,
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(Dimensions.radius * 0.6),
                ),
              ),
              context: context,
              builder: (context) {
                return BottomSheetWidget();
              },
            );
          },
          child: Wrap(
            children: [
              Obx(
                () => TextWidget(
                  padding: EdgeInsets.only(
                      left: Dimensions.horizontalSize * 0.5,
                      top: Dimensions.heightSize * 0.5),
                  controller.countrySelectMethod.value,
                  fontWeight: FontWeight.w900,
                  fontSize: Dimensions.titleLarge * 0.9,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: Dimensions.heightSize * 0.5),
                child: Icon(
                  Icons.expand_more,
                  size: Dimensions.iconSizeLarge * 1.1,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
