part of 'filter_screen.dart';

class FilterMobileScreen extends GetView<FilterController> {
  const FilterMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: Dimensions.defaultHorizontalSize,
            vertical: Dimensions.verticalSize),
        child: PrimaryButton(
          buttonTextColor: CustomColor.blackColor,
          buttonColor: CustomColor.primary2,
          title: Strings.apply,
          onPressed: () {
            Get.offNamed(Routes.navigation);
          },
          borderColor: CustomColor.primary2,
        ),
      ),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TopAppBarWidget(),
          DayButtonWidget(),
          TimeButtonWidget(),
          CategoryWidget(),
        ],
      ),
    );
  }
}
