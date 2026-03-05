import '../domain/entities/food_entity.dart';

class MockFoodData {
  static List<FoodEntity> foods = [
    FoodEntity(
      name: "Sandwich",
      price: "\$150.00",
      rating: 4.5,
      image: "assets/images/sandwich.jpg",
      category: "Popular",
      description: "Fresh healthy sandwich.",
    ),
    FoodEntity(
      name: "Kebab",
      price: "\$250.00",
      rating: 4.2,
      image: "assets/images/kebab.jpg",
      category: "Indian",
      description: "Delicious grilled kebab.",
    ),
  ];
}