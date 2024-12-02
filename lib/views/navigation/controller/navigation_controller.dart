import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/views/discover/screen/discover_screen.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> bodyPages = [
    DiscoverScreen(),
    DiscoverScreen(),
    DiscoverScreen(),
    DiscoverScreen()
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
