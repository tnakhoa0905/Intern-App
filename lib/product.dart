// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ffi';

class Product {
  int id;
  String title;
  double price;
  String category;
  String description;
  String image;

  Product(this.id, this.title, this.price, this.category, this.description,
      this.image);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'price': price,
      'category': category,
      'description': description,
      'image': image,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      map['id'] as int,
      map['title'] as String,
      map['price'] == null ? 0.0 : map['price'].toDouble(),
      map['category'] as String,
      map['description'] as String,
      map['image'] as String,
    );
  }
}
