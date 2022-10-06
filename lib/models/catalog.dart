class CatalogModel {
  static final catmodel = CatalogModel._internal();
  CatalogModel._internal();
  factory CatalogModel()=>catmodel; 
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        description: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image: "assets/images/1.png"),
    Item(
      id: 2,
      name: "Pixel 5",
      description: "Google Pixel phone 5th generation",
      price: 699,
      color: "#00ac51",
      image: "assets/images/2.png",
    ),
    Item(
        id: 3,
        name: "M1 Macbook Air",
        description: "Apple Macbook air with apple silicon",
        price: 1099,
        color: "#e0bfae",
        image: "assets/images/3.png"),
    Item(
        id: 4,
        name: "Playstation 5",
        description: "Sony Playstation 5th generation",
        price: 500,
        color: "#544ee4",
        image: "assets/images/4.png"),
    Item(
        id: 5,
        name: "Airpods Pro",
        description: "Apple Aipods Pro 1st generation",
        price: 200,
        color: "#e3e4e9",
        image: "assets/images/5.png"),
    Item(
        id: 6,
        name: "iPad Pro",
        description: "Apple iPad Pro 2020 edition",
        price: 799,
        color: "#f73984",
        image: "assets/images/6.png"),
    Item(
        id: 7,
        name: "Galaxy S21 Ultra",
        description: "Samsung Galaxy S21 Ultra 2021 edition",
        price: 1299,
        color: "#1c1c1c",
        image: "assets/images/7.png"),
    Item(
        id: 8,
        name: "Galaxy S21",
        description: "Samsung Galaxy S21 2021 edition",
        price: 899,
        color: "#7c95eb",
        image: "assets/images/8.png"),
  ];
//GET ITEM BY ID
// ignore: null_closures
  Item getById(int id) =>
      // ignore: null_closures
      items.firstWhere((element) => element.id == id, orElse: null);
//GET ITEM BY POSITION
  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;
  Item(
      {required this.id,
      required this.name,
      required this.description,
      required this.price,
      required this.color,
      required this.image});
}
