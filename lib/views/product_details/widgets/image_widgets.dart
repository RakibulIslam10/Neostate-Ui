import '../../../base/utils/basic_import.dart';
import 'back_arrow_button.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: BackArrowButton(),
      pinned: true,
      expandedHeight: MediaQuery.of(context).size.height * 0.356,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      flexibleSpace: FlexibleSpaceBar(
          collapseMode: CollapseMode.none,
          background: Image.network(
              'https://www.allrecipes.com/thmb/fFW1o307WSqFFYQ3-QXYVpnFj6E=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/48727-Mikes-homemade-pizza-DDMFS-beauty-4x3-BG-2974-a7a9842c14e34ca699f3b7d7143256cf.jpg')),
    );
  }
}
