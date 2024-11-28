import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import '../../../base/widgets/custom_app_bar.dart';
import '../controller/discover_controller.dart';

class DiscoverTabletScreen extends GetView<DiscoverController> {
  const DiscoverTabletScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('Dashboard Tablet Screen'),
      body: _bodyWidget(context),
    );
  }
  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}

