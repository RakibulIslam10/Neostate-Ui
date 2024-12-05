import '../../../base/utils/basic_import.dart';

class BottomSheetWidget extends GetView<DiscoverController> {
  BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: mainMin,
      children: [
        Flexible(

          child: ListView.builder(
            itemCount: controller.countryList.length,
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.heightSize * 0.5),
                    child: ListTile(
                      title: TextWidget(
                        controller.countryList[index],
                        fontWeight: FontWeight.w900,
                        fontSize: Dimensions.titleLarge * 0.9,
                      ),
                      trailing: TextWidget(
                        '388 Deals',
                        fontSize: Dimensions.titleSmall,
                        color: CustomColor.blackColor.withOpacity(0.5),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Divider(
                    color: CustomColor.disableColor.withOpacity(0.5),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
