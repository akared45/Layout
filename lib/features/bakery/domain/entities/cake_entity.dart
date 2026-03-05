class CakeEntity {
  final String name;
  final String image;
  final String description;
  final String? price;

  CakeEntity({
    required this.name,
    required this.image,
    required this.description,
    this.price,
  });
}