import 'package:nfcpay_structure/base/widgets/primary_input_widget.dart';
import '../../../base/utils/basic_import.dart';

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
