part of 'report_screen.dart';

class ReportMobileScreen extends GetView<ReportController> {
  const ReportMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        Strings.reportIssue,
        centerTitle: false,
        backgroundColor: CustomColor.background,
      ),
      body: _bodyWidget(context),
    );
  }



  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Sizes.height.v10,
          _textWidget(),
          CommentBoxWidget(),
          _buttonWidget()
        ],
      ),
    );
  }

  _buttonWidget() {
    return PrimaryButton(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.horizontalSize * 0.5,
      ),
      disable: true,
      borderColor: CustomColor.disableColor,
      title: Strings.submitFeedback,
      onPressed: () {},
    );
  }

  _textWidget() {
    return TextWidget(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.defaultHorizontalSize * 0.5),
      fontSize: Dimensions.titleSmall,
      Strings.reportIssueDescription,
      color: CustomColor.blackColor.withOpacity(0.5),
    );
  }
}
