import '../../../base/utils/basic_import.dart';
import '../controller/navigation_controller.dart';
import 'bottom_item.dart';

class NavigationBarWidget extends StatelessWidget {
  NavigationBarWidget({super.key});

  final controller = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        color: controller.selectedIndex.value == 1
            ? CustomColor.blackColor
            : CustomColor.whiteColor,
        padding: EdgeInsets.zero,
        clipBehavior: Clip.antiAlias,
        height: Dimensions.heightSize * 6,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        elevation: 5,
        shadowColor: CustomColor.blackColor.withOpacity(0.6),
        child: Row(
          mainAxisAlignment: mainSpaceBet,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 0.5, top: Dimensions.paddingSize * 0.2),
                child: BottomItem(
                  icon: Icons.location_pin,
                  label: Strings.discover,
                  index: 0,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: Dimensions.paddingSize * 0.2),
                child: BottomItem(
                  icon: Icons.play_circle,
                  label: Strings.feed,
                  index: 1,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: Dimensions.paddingSize * 0.2),
                child: BottomItem(
                  icon: Icons.event_available_sharp,
                  label: Strings.booking,
                  index: 2,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: Dimensions.paddingSize * 0.2,
                  left: Dimensions.paddingSize * 0.5,
                ),
                child: BottomItem(
                  icon: Icons.person,
                  label: Strings.profile,
                  index: 3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
