import 'package:flutter/material.dart';
import 'package:nfcpay_structure/languages/strings.dart';
import '../../../base/themes/token.dart';
import '../../../base/utils/basic_import.dart';
import 'bottom_item.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: CustomColor.whiteColor,
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
              padding:
                  EdgeInsets.only(left: 0.5, top: Dimensions.paddingSize * 0.2),
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
    );
  }
}
