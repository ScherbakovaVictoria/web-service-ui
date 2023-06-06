import 'package:json_annotation/json_annotation.dart';

part 'MenuModel.g.dart';

@JsonSerializable()
class Product {
  final String name, description;
  final int id;

  final double price;

  Product(this.name, this.description, this.id, this.price);
  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ProductToJson(this);
}

@JsonSerializable()
class Category {
  final String name;
  final int id;

  final List<Product> products;

  Category(this.name, this.id, this.products);

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class MenuModel {
  List<Category> categories;

  MenuModel(this.categories);

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MenuModelToJson(this);
}
