// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
  final int id;
  final String name;
  final double price;
  final String image;
  final String description;
  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });

  ProductModel copyWith({
    int? id,
    String? name,
    double? price,
    String? image,
    String? description,
  }) {
    return ProductModel(
      id: id ?? this.id,
      name: name ?? this.name,
      price: price ?? this.price,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'image': image,
      'description': description,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as int,
      name: map['name'] as String,
      price: map['price'] as double,
      image: map['image'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProductModel(id: $id, name: $name, price: $price, image: $image, description: $description)';
  }

  @override
  bool operator ==(covariant ProductModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.price == price && other.image == image && other.description == description;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ price.hashCode ^ image.hashCode ^ description.hashCode;
  }
}
