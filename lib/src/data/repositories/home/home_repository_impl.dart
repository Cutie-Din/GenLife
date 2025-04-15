import 'package:genlife_mobi/src/shared/app_export.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRepository repo;
  const HomeRepositoryImpl({required this.repo});

  @override
  Future<BaseResponse> getTopCate() => repo.getTopCate();

  @override
  Future<BaseResponse> getPopularCourses() => repo.getPopularCourses();
}
