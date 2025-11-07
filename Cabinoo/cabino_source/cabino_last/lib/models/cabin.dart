class Cabin {
  final String id;
  final String number;
  final String category;
  final int capacity;
  final double price;
  final String imageUrl;
  final List<String> features;
  final bool isAvailable;

  Cabin({
    required this.id,
    required this.number,
    required this.category,
    required this.capacity,
    required this.price,
    required this.imageUrl,
    required this.features,
    required this.isAvailable,
  });
}