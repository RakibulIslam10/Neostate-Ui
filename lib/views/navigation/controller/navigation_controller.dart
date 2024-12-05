import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/views/bookings/screen/bookings_screen.dart';
import 'package:nfcpay_structure/views/discover/screen/discover_screen.dart';
import 'package:nfcpay_structure/views/feed/screen/feed_screen.dart';
import '../../profile/screen/profile_screen.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;


  List<Widget> bodyPages = [
    DiscoverScreen(),
    FeedScreen(),
    BookingsScreen(),
    ProfileScreen()
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}
