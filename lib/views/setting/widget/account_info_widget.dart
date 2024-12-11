import 'package:nfcpay_structure/views/setting/controller/setting_controller.dart';

import '../../../base/utils/basic_import.dart';

class AccountInfoWidget extends GetView<SettingController> {
  const AccountInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossStart,
      children: [
        Sizes.height.v40,
        TextWidget(
          Strings.account,
          fontWeight: FontWeight.w900,
          fontSize: Dimensions.titleLarge,
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Icon(Icons.person),
          title: TextWidget(Strings.editProfile,fontWeight: FontWeight.bold,),
          trailing: Icon(Icons.arrow_forward_ios_outlined,size: Dimensions.titleLarge * 0.9,),
        ),
      ],
    );
  }
}
