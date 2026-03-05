import '../domain/entities/cake_entity.dart';

class MockCakeData {
  static List<CakeEntity> cakes = [
    CakeEntity(
      name: "Strawberry Cake",
      image: "🎂",
      description:
          "Too busy to make a cake? Design your own cake in a few minutes with our fresh ingredients.",
    ),
    CakeEntity(
      name: "Chocolate Mousse",
      image: "🍫",
      description:
          "A rich and creamy chocolate experience that melts in your mouth instantly.",
    ),
    CakeEntity(
      name: "Vanilla Cupcake",
      image: "🧁",
      description:
          "Small but mighty, these cupcakes are packed with premium vanilla flavor.",
    ),
  ];
}
