

import 'package:fake_store/features/shop/domain/entities/product_entity.dart';

class ProductModel extends Product {
  ProductModel(
      {required super.id,
      required super.title,
      required super.price,
      required super.category,
      required super.description,
      required super.image});

  factory ProductModel.fromJson(Map<String, dynamic> json) {

  var temp = ProductModel(
      id: json["id"],
      title: json["title"]  as String,
      price: double.parse(json["price"].toString()),
      category: json["category"]  as String,
      description: json["description"]  as String,
      image: json["image"]  as String,
    );

    return temp;
  }
}
