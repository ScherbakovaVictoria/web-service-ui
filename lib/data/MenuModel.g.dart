// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'MenuModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      json['name'] as String,
      json['description'] as String,
      json['id'] as int,
      (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'id': instance.id,
      'price': instance.price,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      json['name'] as String,
      json['id'] as int,
      (json['products'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'products': instance.products,
    };

MenuModel _$MenuModelFromJson(Map<String, dynamic> json) => MenuModel(
      (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MenuModelToJson(MenuModel instance) => <String, dynamic>{
      'categories': instance.categories,
    };
