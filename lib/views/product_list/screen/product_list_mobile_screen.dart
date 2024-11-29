part of 'product_list_screen.dart';

class ProductListMobileScreen extends GetView<ProductListController> {
  const ProductListMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('ProductList Mobile Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
        ],
      ),
    );
  }
}
