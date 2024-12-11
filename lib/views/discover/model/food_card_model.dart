class FoodCardModel {
  final String imagePath;
  final String title;
  final double rating;
  final List<String> offers;

  FoodCardModel({
    required this.imagePath,
    required this.title,
    required this.rating,
    required this.offers,
  });
}

final List<FoodCardModel> foodCards = [
  FoodCardModel(
    imagePath:
        'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg?resize=768,574',
    title: 'Pizzeria Mimmo',
    rating: 4.5,
    offers: ['2 for 1', 'Free Drink'],
  ),
  FoodCardModel(
    imagePath:
        'https://www.foodiesfeed.com/wp-content/uploads/2023/06/burger-with-melted-cheese.jpg',
    title: 'Spaghetti House',
    rating: 4.2,
    offers: ['20% off', 'Happy Hour'],
  ),
];
