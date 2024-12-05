import 'package:geolocator/geolocator.dart';
import '../../../base/utils/basic_import.dart';
import '../model/food_card_model.dart';
import '../model/location_model.dart';

class DiscoverController extends GetxController {
  final pageController = PageController();

  RxBool isMapWidget = false.obs;
  RxString countrySelectMethod = 'Select City'.obs;
  var isFoodCardVisible = false.obs;
  var selectedFoodCard = Rxn<FoodCardModel>(null);
  var initialLatLng = LatLng(23.8103, 90.4125).obs;
  final RxSet<Marker> markers = <Marker>{}.obs;

  List<String> countryList = [
    'Bangladesh',
    'India',
    'United States',
    'Canada',
    'Australia',
    'United Kingdom',
    'Germany',
    'France',
    'Japan',
    'Brazil'
        'Bangladesh',
    'India',
    'United States',
    'Canada',
    'Australia',
    'United Kingdom',
    'Germany',
    'France',
    'Japan',
    'Brazil'
  ];

  @override
  void onInit() {
    super.onInit();
    _loadMarkers();
  }

  void _loadMarkers() async {
    markers.clear();
    for (var location in locations) {
      markers.add(
        Marker(
          markerId: MarkerId(location.name),
          position: location.position,
          onTap: () {
            _onMarkerTapped(location);
            pageController.animateToPage(
              0,
              duration: Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          },
          infoWindow: InfoWindow(
            title: location.name,
            snippet: 'A popular spot in Dhaka',
          ),
        ),
      );
    }
  }























  _onMarkerTapped(LocationModel location) {
    if (location.name == 'Dhaka City Center') {
      selectedFoodCard.value = FoodCardModel(
        imagePath:
            'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
        title: 'Spaghetti House',
        rating: 4.2,
        offers: ['20% off', 'Happy Hour'],
      );
    } else if (location.name == 'Dhanmondi') {
      selectedFoodCard.value = FoodCardModel(
        imagePath:
            'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg?resize=768,574',
        title: 'Pizzeria Mimmo',
        rating: 4.5,
        offers: ['2 for 1', 'Free Drink'],
      );
    } else if (location.name == 'Uttara') {
      selectedFoodCard.value = FoodCardModel(
        imagePath:
            'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
        title: 'The Burger Joint',
        rating: 4.0,
        offers: ['10% off', 'Free Fries'],
      );
    } else if (location.name == 'Gulshan') {
      selectedFoodCard.value = FoodCardModel(
        imagePath:
            'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg?resize=768,574',
        title: 'Taco Heaven',
        rating: 4.7,
        offers: ['Free Drink', 'Happy Hour'],
      );
    } else if (location.name == 'Banani') {
      selectedFoodCard.value = FoodCardModel(
        imagePath:
            'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
        title: 'Sushi Palace',
        rating: 4.3,
        offers: ['20% off', 'Special Discount'],
      );
    } else if (location.name == 'Mohakhali') {
      selectedFoodCard.value = FoodCardModel(
        imagePath:
            'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg?resize=768,574',
        title: 'Pizza World',
        rating: 4.0,
        offers: ['2 for 1', 'Free Delivery'],
      );
    } else if (location.name == 'Tejgaon') {
      selectedFoodCard.value = FoodCardModel(
        imagePath:
            'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
        title: 'Chinese Garden',
        rating: 4.5,
        offers: ['15% off', 'Buy 1 Get 1 Free'],
      );
    } else if (location.name == 'Shahbagh') {
      selectedFoodCard.value = FoodCardModel(
        imagePath:
            'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
        title: 'Old Dhaka Biryani',
        rating: 4.8,
        offers: ['Free Dessert', '10% off'],
      );
    } else if (location.name == 'Old Dhaka') {
      selectedFoodCard.value = FoodCardModel(
        imagePath: 'https://example.com/food-image.jpg',
        title: 'Steakhouse Deluxe',
        rating: 4.6,
        offers: ['Free Drink', '20% off'],
      );
    } else {
      selectedFoodCard.value = FoodCardModel(
        imagePath:
            'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
        title: 'Default Restaurant',
        rating: 3.8,
        offers: ['No offer', 'Check out the menu'],
      );
    }
  }

  Position? currentLocation;

  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location service are disable');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Location permissions are denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied , we cannot request permissions');
    }
    return await Geolocator.getCurrentPosition();
  }
}
