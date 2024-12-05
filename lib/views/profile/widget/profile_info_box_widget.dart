import '../../../base/utils/basic_import.dart';
import '../controller/profile_controller.dart';

class ProfileInfoBoxWidget extends GetView<ProfileController> {
  const ProfileInfoBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(
      itemCount: 3,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.horizontalSize * 0.5,vertical: Dimensions.verticalSize * 0.15),
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.horizontalSize * 0.5,
                    vertical: Dimensions.verticalSize * 0.25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                  border: Border.all(
                      color: CustomColor.disableColor.withOpacity(0.5)),
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                            right: Dimensions.horizontalSize * 0.5),
                        padding: EdgeInsets.all(Dimensions.paddingSize * 0.2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: CustomColor.primary.withOpacity(0.4)),
                        child: Icon(Icons.event_available_sharp)),
                    TitleSubTitleWidget(
                        subTitleFontSize: Dimensions.titleSmall,
                        title: '0',
                        subTitle: 'Deal')
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.horizontalSize * 0.5),
                padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.horizontalSize * 0.5,
                    vertical: Dimensions.verticalSize * 0.25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius),
                  border: Border.all(
                      color: CustomColor.disableColor.withOpacity(0.5)),
                ),
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(
                            right: Dimensions.horizontalSize * 0.5),
                        padding: EdgeInsets.all(Dimensions.paddingSize * 0.2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: CustomColor.primary.withOpacity(0.4)),
                        child: Icon(Icons.event_available_sharp)),
                    TitleSubTitleWidget(
                        subTitleFontSize: Dimensions.titleSmall,
                        title: '0',
                        subTitle: 'Deal')
                  ],
                ),
              ),

            ),
          ],
        );
      },
    ));
  }
}
