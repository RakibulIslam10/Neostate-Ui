import 'package:get/get.dart';

class BookmarkController extends GetxController {

  RxBool bookmarkSavedItem = false.obs;


  var cartItems = <Map<String, dynamic>>[].obs;

  void addToCart(Map<String, dynamic> item) {
    cartItems.add(item);
  }
  void removeFromCart(Map<String, dynamic> item) {
    cartItems.remove(item);
  }
  int get totalItems => cartItems.length;
}
