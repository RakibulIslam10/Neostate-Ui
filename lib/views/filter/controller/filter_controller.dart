import 'package:get/get.dart';

class FilterController extends GetxController {
  var daySelected = (-1).obs;
  var timeSelected = (-1).obs;
  var categorySelected = (-1).obs;

  void resetAllValue() {
    daySelected.value = -1;
    timeSelected.value = -1;
    categorySelected.value = -1;
  }
}
