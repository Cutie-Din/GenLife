import 'package:genlife_mobi/src/shared/app_export.dart';

part 'top_categories_model.freezed.dart';
part 'top_categories_model.g.dart';

@freezed
class TopCategoriesModel with _$TopCategoriesModel {
  const factory TopCategoriesModel({
    final int? id,
    @Default('') final String name,
    @Default(0) final int course_count,
  }) = _TopCategoriesModel;

  factory TopCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$TopCategoriesModelFromJson(json);
}
