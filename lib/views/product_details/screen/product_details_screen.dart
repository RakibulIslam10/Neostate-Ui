import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/views/product_details/widgets/comments_section_widget.dart';
import 'package:nfcpay_structure/views/product_details/widgets/contact_and_opening_widget.dart';
import 'package:nfcpay_structure/views/product_details/widgets/image_widgets.dart';
import 'package:nfcpay_structure/views/product_details/widgets/info_box_widget.dart';
import 'package:nfcpay_structure/views/product_details/widgets/location_map_widget.dart';
import 'package:nfcpay_structure/views/product_details/widgets/menu_button_widget.dart';
import 'package:nfcpay_structure/views/product_details/widgets/rating_reviews_widget.dart';
import 'package:nfcpay_structure/views/product_details/widgets/text_heading_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/product_details_controller.dart';
part 'product_details_tablet_screen.dart';
part 'product_details_mobile_screen.dart';

class ProductDetailsScreen extends GetView<ProductDetailsController> {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ProductDetailsMobileScreen(),
      tablet: ProductDetailsTabletScreen(),
    );
  }
}
