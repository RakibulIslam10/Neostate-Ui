import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nfcpay_structure/base/utils/basic_import.dart';
import 'package:nfcpay_structure/routes/routes.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: CachedNetworkImage(
            imageUrl:
                'https://www.allrecipes.com/thmb/fFW1o307WSqFFYQ3-QXYVpnFj6E=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/48727-Mikes-homemade-pizza-DDMFS-beauty-4x3-BG-2974-a7a9842c14e34ca699f3b7d7143256cf.jpg',
            placeholder: (context, url) => const Text(''),
            errorWidget: (context, url, error) => const Text(''),
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.all(Dimensions.paddingSize * 0.4),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: CustomColor.whiteColor),
          child:  BackButtonWidget(
            onTap: () {
            Get.off(Routes.navigation);
          },)
        ),

      ],
    );
  }
}
