class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        description: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image: "assets/images/iPhone 12 Pro.jpg"),
        Item(
      id: 2,
      name: "Pixel 5",
      description: "Google Pixel phone 5th generation",
      price: 699,
      color: "#00ac51",
      image: "assets/images/Pixel 5.jpg",
    ),
    Item(
        id: 3,
        name: "M1 Macbook Air",
        description: "Apple Macbook air with apple silicon",
        price: 1099,
        color: "#e0bfae",
        image: "assets/images/M1 Macbook Air.jpg"),
    Item(
        id: 4,
        name: "Playstation 5",
        description: "Sony Playstation 5th generation",
        price: 500,
        color: "#544ee4",
        image: "assets/images/Playstation 5.jpg"),
    Item(
        id: 5,
        name: "Airpods Pro",
        description: "Apple Aipods Pro 1st generation",
        price: 200,
        color: "#e3e4e9",
        image: "assets/images/Airpods Pro.jpg"),
    Item(
        id: 6,
        name: "iPad Pro",
        description: "Apple iPad Pro 2020 edition",
        price: 799,
        color: "#f73984",
        image: "assets/images/iPad Pro.jpg"),
    Item(
        id: 7,
        name: "Galaxy S21 Ultra",
        description: "Samsung Galaxy S21 Ultra 2021 edition",
        price: 1299,
        color: "#1c1c1c",
        image: "assets/images/Galaxy S21 Ultra.jpg"),
    Item(
        id: 8,
        name: "Galaxy S21",
        description: "Samsung Galaxy S21 2021 edition",
        price: 899,
        color: "#7c95eb",
        image: "assets/images/Galaxy S21.jpg"),
  ];
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
