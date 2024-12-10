import 'package:nfcpay_structure/views/discover/widget/map_filter_button_widget.dart';
import '../../../base/utils/basic_import.dart';
import 'food_card_widget.dart';

class MapWidget extends GetView<DiscoverController> {
  MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Obx(
      () => Stack(
        alignment: Alignment.center,
        children: [
          _googleMap(),
          if (controller.selectedFoodCard.value != null) ...[
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.16,
              left: 10,
              right: 10,
              child: FoodCardWidget(
                controller.selectedFoodCard.value,
              ),
            ),
          ],
          _buttonWidget(context),
        ],
      ),
    ));
  }

  _googleMap() {
    return GoogleMap(
      initialCameraPosition:
          CameraPosition(target: controller.initialLatLng.value, zoom: 6.4546),
      markers: Set.of(controller.markers),
      onMapCreated: (GoogleMapController gController) {
        controller.completer.complete(gController);
      },
    );
  }

  _buttonWidget(BuildContext context) {
    return Positioned(
        bottom: 75.0,
        left: 16.0,
        right: 16.0,
        child: Row(
          mainAxisAlignment: mainEnd,
          children: [
            MapFilterButtonWidget(),
            Sizes.width.v30,
            _locationButton()
          ],
        ));
  }

  _locationButton() {
    return InkWell(
      onTap: () async{
      await controller.determinePosition();
      },
      child: Container(
          padding: EdgeInsets.all(Dimensions.paddingSize * 0.4),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 2,
                offset: Offset(0, 4),
              ),
            ],
            shape: BoxShape.circle,
            color: CustomColor.whiteColor,
          ),
          child: Icon(Icons.navigation)),
    );
  }
}
