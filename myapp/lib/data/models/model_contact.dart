class ModelContact {
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String company;
  final String address;

  bool isFavorite = true;

  ModelContact({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.email,
    required this.company,
    required this.address,
  });

  String get fullName => '$firstName $lastName';
  String get initials => '${firstName[0]}${lastName[0]}'.toUpperCase();
  void changeFavoriteState() {
    isFavorite = !isFavorite;
  }
}
