import 'dart:convert';

class CatalogModel {
  static List<Item> items = [];
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
      this.id, this.name, this.description, this.price, this.color, this.image);

  Item copyWith({
    int? id,
    String? name,
    String? description,
    num? price,
    String? color,
    String? image,
  }) {
    return Item(
      id ?? this.id,
      name ?? this.name,
      description ?? this.description,
      price ?? this.price,
      color ?? this.color,
      image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'description': description});
    result.addAll({'price': price});
    result.addAll({'color': color});
    result.addAll({'image': image});

    return result;
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      map['id']?.toInt() ?? 0,
      map['name'] ?? '',
      map['description'] ?? '',
      map['price'] ?? 0,
      map['color'] ?? '',
      map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(id: $id, name: $name, description: $description, price: $price, color: $color, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.id == id &&
        other.name == name &&
        other.description == description &&
        other.price == price &&
        other.color == color &&
        other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        description.hashCode ^
        price.hashCode ^
        color.hashCode ^
        image.hashCode;
  }
}
