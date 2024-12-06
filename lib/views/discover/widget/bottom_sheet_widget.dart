import '../../../base/utils/basic_import.dart';

class BottomSheetWidget extends GetView<DiscoverController> {
  BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: mainMin,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: controller.countryList.length,
            itemBuilder: (context, index) {
              return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  controller.selectCountry(controller.countryList[index]);
                  Navigator.pop(context);
                  print(controller.countrySelectMethod.value);
                  controller.goToLocation(
                    CameraPosition(
                      target: LatLng(24.461952285741287, 89.70634734372821),
                      zoom: 12.4546
                    ),

                  );
                },
                child: Column(
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
