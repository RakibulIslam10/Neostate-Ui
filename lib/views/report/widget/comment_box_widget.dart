import 'package:nfcpay_structure/base/widgets/primary_input_widget.dart';
import '../../../base/utils/basic_import.dart';

class CommentBoxWidget extends GetView<ReportController> {
  CommentBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Dimensions.horizontalSize * 0.5,vertical: Dimensions.verticalSize * 0.5),
          child: PrimaryInputWidget(
            title: Strings.comment,
            hintText: '',
              maxLines: 4,
              controller: controller.commentController,
             ),
        ),
        Sizes.height.v20,
      ],
    );
  }
}
