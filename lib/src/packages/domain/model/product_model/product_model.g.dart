// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) => ProductModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: json['creationAt'] as String,
      updatedAt: json['updatedAt'] as String,
      category: CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
      'creationAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'category': instance.category,
    };

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) => CategoryModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      createdAt: json['creationAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'creationAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
