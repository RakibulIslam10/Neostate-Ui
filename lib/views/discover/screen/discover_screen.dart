import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nfcpay_structure/base/themes/token.dart';
import 'package:nfcpay_structure/base/utils/basic_import.dart';
import 'package:nfcpay_structure/base/utils/dimensions.dart';
import 'package:nfcpay_structure/base/widgets/custom_image_widget.dart';
import 'package:nfcpay_structure/base/widgets/primary_button.dart';
import 'package:nfcpay_structure/base/widgets/text_widget.dart';
import 'package:nfcpay_structure/base/widgets/title_sub_title_widget.dart';
import 'package:nfcpay_structure/languages/strings.dart';
import 'package:nfcpay_structure/views/discover/widget/food_card_widget.dart';
import 'package:nfcpay_structure/views/discover/widget/map_widget.dart';
import '../../../base/utils/responsive_layout.dart';
import '../controller/discover_controller.dart';
import '../widget/top_bar_widget.dart';
import 'discover_tablet_screen.dart';
part 'discover_mobile_screen.dart';

class DiscoverScreen extends GetView<DiscoverController> {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: DiscoverMobileScreen(),
      tablet: DiscoverTabletScreen(),
    );
  }
}
