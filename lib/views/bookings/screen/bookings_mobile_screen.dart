part of 'bookings_screen.dart';

class BookingsMobileScreen extends GetView<BookingsController> {
  const BookingsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyWidget(context),
      bottomNavigationBar: TwoButtonWidget(),
    );
  }

  _bodyWidget(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextWidget(
            padding:
                EdgeInsets.symmetric(vertical: Dimensions.verticalSize * 0.8),
            Strings.whatIsNeoTaste,
            fontWeight: FontWeight.bold,
            fontSize: Dimensions.titleLarge,
          ),
          VideoWidget()
        ],
      ),
    );
  }
}
