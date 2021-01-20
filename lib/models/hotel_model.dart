class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({this.imageUrl, this.name, this.address, this.price});
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Hotel 1',
    address: '61 Bridge Street, Kington',
    price: 250,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel 2',
    address: 'Kemp House, 152 City Road',
    price: 210,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel3.jpg',
    name: 'Hotel 3',
    address: 'Iasi, strada Palas nr. 7A ',
    price: 310,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel4.jpg',
    name: 'Hotel 4',
    address: 'Iasi, Sos. Nicolina 203A',
    price: 240,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel5.jpg',
    name: 'Hotel 5',
    address: 'Carol I, Nr.11, Iaşi,',
    price: 260,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel6.jpg',
    name: 'Hotel 6',
    address: 'Sfântul Petru Movilă , Iași',
    price: 270,
  ),
  Hotel(
    imageUrl: 'assets/images/hotel7.jpg',
    name: 'Hotel 7',
    address: 'Strada Cuza Vodă 1, Iași',
    price: 210,
  ),
];
