part of 'filter_screen.dart';

class FilterMobileScreen extends GetView<FilterController> {
  const FilterMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
      bottomNavigationBar: ButtonWidget(),
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
