class House {
  String name;
  String address;
  String imageUrl;

  House({
    required this.name,
    required this.address,
    required this.imageUrl,
  });

  static List<House> generateRecommended() {
    return [
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/house01.jpeg',
      ),
      House(
        name: 'The Sun House',
        address: 'A420, Chhatak, Sylhet',
        imageUrl: 'assets/images/house02.jpeg',
      ),
    ];
  }

  static List<House> generateBestOffer() {
    return [
      House(
        name: 'The Moon House',
        address: 'P455, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer01.jpeg',
      ),
      House(
        name: 'The Sun House',
        address: 'A420, Chhatak, Sylhet',
        imageUrl: 'assets/images/offer02.jpeg',
      ),
    ];
  }
}
