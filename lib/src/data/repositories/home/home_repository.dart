import 'package:genlife_mobi/src/shared/app_export.dart';

abstract class HomeRepository {
  Future<BaseResponse> getTopCate();

  Future<BaseResponse> getPopularCourses();
}
