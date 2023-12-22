// To parse this JSON data, do
//
//     final catelogModel = catelogModelFromJson(jsonString);

import 'dart:convert';


CatelogModel catelogModelFromJson(String str) =>
    CatelogModel.fromJson(json.decode(str));

String catelogModelToJson(CatelogModel data) => json.encode(data.toJson());

class CatelogModel {
  final List<Item>? items;
 static List<Item> item = <Item>[];

//Ger by id
  Item getById(int id) =>
      item.firstWhere((element) => element.id == id, orElse: () => Item());

  // Get Item by position
  Item getByPosition(int pos) => item[pos];

  CatelogModel({this.items});

factory CatelogModel.fromJson(Map<String, dynamic> json) => CatelogModel(
      items: json["products"] == null
          ? []
          : List<Item>.from(json["products"]!.map((x) => Item.formMap(x))),
    );

Map<String, dynamic> toJson() => {
      "products": items == null
          ? []
          : List<dynamic>.from(items!.map((x) => x.toMap())),
    };
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
