import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/views/bookmark/widget/bookmark_items_widget.dart';
import 'package:nfcpay_structure/views/bookmark/widget/empty_image_widget.dart';
import 'package:nfcpay_structure/views/bookmark/widget/text_and_button.dart';
import 'package:nfcpay_structure/views/discover/widget/food_card_widget.dart';
import '../../../base/utils/basic_import.dart';
import '../controller/bookmark_controller.dart';
part 'bookmark_tablet_screen.dart';
part 'bookmark_mobile_screen.dart';

class BookmarkScreen extends GetView<BookmarkController> {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: BookmarkMobileScreen(),
      tablet: BookmarkTabletScreen(),
    );
  }
}
