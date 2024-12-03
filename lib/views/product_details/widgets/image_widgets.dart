import '../../../base/utils/basic_import.dart';
import 'back_arrow_button.dart';

class ImageWidgets extends GetView<ProductDetailsController> {
  ImageWidgets({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        leading: BackArrowButton(),
        pinned: true,
        expandedHeight: MediaQuery.of(context).size.height * 0.356,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        flexibleSpace: Stack(
          alignment: Alignment.topLeft,
          children: [
            FlexibleSpaceBar(
              collapseMode: CollapseMode.none,
              background: PageView.builder(
                controller: pageController,
                onPageChanged: (index) {
                  controller.currentPage.value = index;
                },
                itemCount: controller.imageUrls.length,
                itemBuilder: (context, index) {
                  return Image.network(
                    controller.imageUrls[index],
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Loader();
                    },
                  );
                },
              ),
            ),
            Positioned(
              right: Dimensions.heightSize * 1.5,
                top: Dimensions.heightSize * 1.5,
                child: Obx(
                  () => Row(
                      children: List.generate(
                    controller.imageUrls.length,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      height: Dimensions.heightSize,
                      width: Dimensions.heightSize,
                      decoration: BoxDecoration(
                          color: controller.currentPage.value == index
                              ? CustomColor.primary
                              : CustomColor.whiteColor,
                        shape: BoxShape.circle
                          ),
                    ),
                  )),
                ))
          ],
        ));
  }
}
