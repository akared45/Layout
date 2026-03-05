import '../domain/entities/food_entity.dart';

class MockFoodData {
  static List<FoodEntity> foods = [
    FoodEntity(
      name: "Sandwich",
      price: "\$150.00",
      rating: 4.5,
      image: "🥪",
      category: "Popular",
      description: "Fresh healthy sandwich.",
    ),
    FoodEntity(
      name: "Kebab",
      price: "\$250.00",
      rating: 4.2,
      image: "🍢",
      category: "Indian",
      description: "Delicious grilled kebab.",
    ),
    FoodEntity(
      name: "Juice",
      price: "\$80.00",
      rating: 4.0,
      image: "🍹",
      category: "Popular", //
      description: "Cool fruit juice.",
    ),
  ];
}