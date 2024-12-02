import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nfcpay_structure/base/utils/basic_import.dart';
import 'package:nfcpay_structure/views/report/controller/report_controller.dart';
import '../../../base/widgets/primary_input_widget.dart';

class CommentBoxWidget extends GetView<ReportController> {
  CommentBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget(
          Strings.comment,
          fontWeight: FontWeight.bold,
          padding:
              EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.5),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.defaultHorizontalSize),
          child: PrimaryInputWidget(
              maxLines: 4,
              controller: controller.commentController,
              hintText: ''),
        ),
        Sizes.height.v20,
      ],
    );
  }
}
