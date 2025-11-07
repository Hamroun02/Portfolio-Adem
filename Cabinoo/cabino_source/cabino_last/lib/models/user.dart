class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String profileImage;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.profileImage,
  });

  // Create a copy of the user with updated fields
  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? profileImage,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      profileImage: profileImage ?? this.profileImage,
    );
  }
}