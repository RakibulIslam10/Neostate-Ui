part of 'bookmark_screen.dart';

class BookmarkTabletScreen extends GetView<BookmarkController> {
  const BookmarkTabletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar('Bookmark Tablet Screen'),
      body: _bodyWidget(context),
    );
  }

  _bodyWidget(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [],
      ),
    );
  }
}
