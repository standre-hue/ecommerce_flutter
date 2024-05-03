class Product {
  int id;
  String name;
  int star;
  String imgSrc;
  double price;
  int quantity = 10;
  String category = 'Tech';

  Product({
    required this.id,
    required this.name,
    required this.star,
    required this.price,
    required this.imgSrc,
  });
}

List<Product> products = [
  Product(
    id: 1,
    name: 'Tecno KDB 6 ROM 32GB RAM 3GB (DUAL SIM) 5000 mAh, Starry Black',
    star: 2,
    price: 25000,
    imgSrc: 'assets/images/c4.png',
  ),
  Product(
    id: 2,
    name: 'Iphone 12 (DUAL SIM) 5000 mAh, Starry Black',
    star: 4,
    price: 700000,
    imgSrc: 'assets/images/c4.png',
  ),
  Product(
    id: 3,
    name: 'Infinix (DUAL SIM) 5000 mAh, Starry Black',
    star: 3,
    price: 75000,
    imgSrc: 'assets/images/c4.png',
  ),
  Product(
    id: 4,
    name: 'HP Pavillon SSD 256GB RAM 16GB 6H',
    star: 5,
    price: 200000,
    imgSrc: 'assets/images/c4.png',
  ),
  Product(
    id: 5,
    name: 'golden Plate without carbonate oxyde',
    star: 2,
    price: 25000,
    imgSrc: 'assets/images/c4.png',
  ),
  Product(
    id: 6,
    name: 'Spy Pen (DUAL SIM) 5000 mAh, Starry Black long life battery',
    star: 2,
    price: 15000,
    imgSrc: 'assets/images/c4.png',
  ),
];
