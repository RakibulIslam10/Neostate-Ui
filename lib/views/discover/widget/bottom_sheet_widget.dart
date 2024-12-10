import '../../../base/utils/basic_import.dart';

class BottomSheetWidget extends GetView<DiscoverController> {
  BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  final locations = {
                    0: LatLng(24.461952285741287, 89.70634734372821),
                    1: LatLng(23.8103, 90.4125),
                    2: LatLng(22.3569, 91.7832),
                  };

                  controller.selectCountry(controller.countryList[index]);
                  Navigator.pop(context);

                  final targetLatLng = locations[index] ?? LatLng(20.5937, 78.9629);

                  controller.goToLocation(CameraPosition(
                    target: targetLatLng,
                    zoom: 12.4546,
                  ));

                  print(controller.countrySelectMethod.value);
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
            childCount: controller.countryList.length,
          ),
        ),
      ],
    );
  }
}
