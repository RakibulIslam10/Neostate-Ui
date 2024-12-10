import 'package:nfcpay_structure/views/bookmark/controller/bookmark_controller.dart';
import '../../../base/utils/basic_import.dart';

class EmptyImageWidget extends GetView<BookmarkController> {
  const EmptyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(vertical: Dimensions.verticalSize),
      child: Center(
        child: CachedNetworkImage(
          imageUrl:
          'https://w7.pngwing.com/pngs/639/917/png-transparent-page-not-found-cartoon-illustration-thumbnail.png',
          placeholder: (context, url) => const Text(''),
          errorWidget: (context, url, error) => const Text(''),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
