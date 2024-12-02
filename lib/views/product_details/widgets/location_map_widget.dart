import '../../../base/utils/basic_import.dart';

class LocationMapWidget extends GetView<ProductDetailsController> {
  const LocationMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Sizes.height.v10,
        Padding(
          padding: EdgeInsets.only(left: Dimensions.horizontalSize),
          child: Wrap(
            children: [
            Icon(Icons.location_pin,),
            TextWidget(
              padding: EdgeInsets.only(left: Dimensions.horizontalSize *0.5),
              Strings.location,fontWeight: FontWeight.bold,),
          ],),
        ),
        TextWidget(
          padding: EdgeInsets.only(left: Dimensions.horizontalSize * 2),
          Strings.address,fontSize: Dimensions.titleSmall,),
        Sizes.height.v10,
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: GoogleMap(
            initialCameraPosition: controller.initialCameraPosition.value,
            onMapCreated: (GoogleMapController controller) {
              // You can store the controller in a variable if needed.
            },
          ),
        ),
      ],
    );
  }
}
