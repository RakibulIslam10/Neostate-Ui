part of 'bookmark_screen.dart';

class BookmarkMobileScreen extends GetView<BookmarkController> {
  const BookmarkMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        backgroundColor: CustomColor.background,
        Strings.Bookmark,
        centerTitle: false,
      ),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: mainCenter,
        children: [
       if(controller.bookmarkSavedItem.value)...[
         BookmarkItemsWidget()
       ] else...[
         EmptyImageWidget(),
         TextAndButton()
       ]
        ],
      ),
    );
  }
}
