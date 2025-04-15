// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_courses_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularCoursesModelImpl _$$PopularCoursesModelImplFromJson(
  Map<String, dynamic> json,
) => _$PopularCoursesModelImpl(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String? ?? '',
  image: json['image'] as String? ?? '',
  thumbnail: json['thumbnail'] as String? ?? '',
  assigned_instructor: json['assigned_instructor'] as String? ?? '',
  price: (json['price'] as num?)?.toInt() ?? 0,
  discount_price: (json['discount_price'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$PopularCoursesModelImplToJson(
  _$PopularCoursesModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'image': instance.image,
  'thumbnail': instance.thumbnail,
  'assigned_instructor': instance.assigned_instructor,
  'price': instance.price,
  'discount_price': instance.discount_price,
};
