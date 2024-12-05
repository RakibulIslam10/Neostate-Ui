import 'package:nfcpay_structure/views/discover/widget/list_food_card.dart';
import 'package:nfcpay_structure/views/discover/widget/map_filter_button_widget.dart';
import '../../../base/utils/basic_import.dart';

class ProductListWidget extends GetView<DiscoverController> {
  const ProductListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _bodyWidget();
  }

  _bodyWidget() {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ListFoodCard(),
          Positioned(bottom: 75.0, child: MapFilterButtonWidget())
        ],
      ),
    );
  }
}
