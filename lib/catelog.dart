// To parse this JSON data, do
//
//     final catelogModel = catelogModelFromJson(jsonString);

import 'dart:convert';

CatelogModel catelogModelFromJson(String str) =>
    CatelogModel.fromJson(json.decode(str));

String catelogModelToJson(CatelogModel data) => json.encode(data.toJson());

class CatelogModel {
  final List<Product>? products;

  CatelogModel({
    this.products,
  });

  CatelogModel copyWith({
    List<Product>? products,
  }) =>
      CatelogModel(
        products: products ?? this.products,
      );

  factory CatelogModel.fromJson(Map<String, dynamic> json) => CatelogModel(
        products: json["products"] == null
            ? []
            : List<Product>.from(
                json["products"]!.map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "products": products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
      };
}

class Product {
  final int? id;
  final String? name;
  final String? desc;
  final int? price;
  final String? color;
  final String? image;

  Product({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  });

  Product copyWith({
    int? id,
    String? name,
    String? desc,
    int? price,
    String? color,
    String? image,
  }) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        desc: desc ?? this.desc,
        price: price ?? this.price,
        color: color ?? this.color,
        image: image ?? this.image,
      );

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        desc: json["desc"],
        price: json["price"],
        color: json["color"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
}

class CatalogModel {
  static List<Item> item = [
    Item(
      id: 1,
      name: " iphone 12 pro ",
      desc: "Apple iphone 12th  genertion",
      price: 2000,
      color: "#33505a",
      image: "assets/images/iphone113.jpg",
    ),
  ];
}

class Item {
  final int? id;
  final String? name;
  final String? desc;
  final num? price;
  final String? color;
  final String? image;

  Item({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image,
  });

  factory Item.formMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'],
      name: map['name'],
      image: map['image'],
      color: map['color'],
      desc: map['desc'],
      price: map['price'],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "image": image,
        "color": color,
        "desc": desc,
        "price": price
      };
}
