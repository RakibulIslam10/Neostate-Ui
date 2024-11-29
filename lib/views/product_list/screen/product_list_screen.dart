import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/product_list_controller.dart';
part 'product_list_tablet_screen.dart';
part 'product_list_mobile_screen.dart';

class ProductListScreen extends GetView<ProductListController> {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ProductListMobileScreen(),
      tablet: ProductListTabletScreen(),
    );
  }
}
