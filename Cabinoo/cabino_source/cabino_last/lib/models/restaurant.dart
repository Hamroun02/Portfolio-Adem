class Restaurant {
  final String id;
  final String name;
  final String location;
  final double rating;
  final String imageUrl;
  final String description;
  final List<String> amenities;

  Restaurant({
    required this.id,
    required this.name,
    required this.location,
    required this.rating,
    required this.imageUrl,
    required this.description,
    required this.amenities,
  });
}