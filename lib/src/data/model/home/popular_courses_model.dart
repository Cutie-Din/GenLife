import 'package:genlife_mobi/src/shared/app_export.dart';

part 'popular_courses_model.freezed.dart';
part 'popular_courses_model.g.dart';

@freezed
class PopularCoursesModel with _$PopularCoursesModel {
  const factory PopularCoursesModel({
    final int? id,
    @Default('') final String title,
    @Default('') final String image,
    @Default('') final String thumbnail,
    @Default('') final String assigned_instructor,
    @Default(0) final int price,
    @Default(0) final int discount_price,
  }) = _PopularCoursesModel;

  factory PopularCoursesModel.fromJson(Map<String, dynamic> json) =>
      _$PopularCoursesModelFromJson(json);
}
