import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nfcpay_structure/base/themes/token.dart';
import 'package:nfcpay_structure/base/utils/dimensions.dart';
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
