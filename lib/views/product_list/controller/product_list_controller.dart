import 'package:get/get.dart';

import '../../../base/utils/basic_import.dart';

class ProductListController extends GetxController {

  RxString countrySelectMethod = 'Select City'.obs;
  List<String> countryList = [
    'Bangladesh',
    'India',
    'United States',
    'Canada',
    'Australia',
    'United Kingdom',
    'Germany',
    'France',
    'Japan',
    'Brazil'
  ];



  //
  // ScrollController scrollController = ScrollController();
  // void smoothScrollTo(double offset) {
  //   scrollController.animateTo(
  //     offset,
  //     duration: Duration(seconds: 1),
  //     curve: Curves.easeInOut,
  //   );
  // }
  // @override
  // void onClose() {
  //   scrollController.dispose();
  //   super.onClose();
  // }

}
