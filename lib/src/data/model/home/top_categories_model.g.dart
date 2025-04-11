// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopCategoriesModelImpl _$$TopCategoriesModelImplFromJson(
  Map<String, dynamic> json,
) => _$TopCategoriesModelImpl(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String? ?? '',
  course_count: (json['course_count'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$$TopCategoriesModelImplToJson(
  _$TopCategoriesModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'course_count': instance.course_count,
};
