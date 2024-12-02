part of 'product_list_screen.dart';

class ProductListMobileScreen extends GetView<ProductListController> {
  const ProductListMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TopBar(),
          ProductListWidget(),
          PrimaryInputWidget(controller: TextEditingController(), hintText: 'hintText')
        ],
      ),
    );
  }
}
