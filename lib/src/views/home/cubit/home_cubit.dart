import 'package:genlife_mobi/src/shared/app_export.dart';

final logger = getLogger("HomeCubit");

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository repo;
  final AppManager appManager;

  HomeCubit(this.repo, this.appManager) : super(const HomeState());

  Future<void> getTopCate() async {
    try {
      emit(state.copyWith(status: HomeStatus.loading));

      final response = await repo.getTopCate();

      final categories =
          (response.data as List<dynamic>)
              .map((e) => TopCategoriesModel.fromJson(e as Map<String, dynamic>))
              .toList();
      emit(state.copyWith(status: HomeStatus.success, topCategories: categories));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.failure, message: e.toString()));
    }
  }

  Future<void> getPopularCourses() async {
    try {
      emit(state.copyWith(status: HomeStatus.loading));

      final response = await repo.getPopularCourses();

      final courses =
          (response.data as List<dynamic>)
              .map((e) => PopularCoursesModel.fromJson(e as Map<String, dynamic>))
              .toList();
      emit(state.copyWith(status: HomeStatus.success, popularCourses: courses));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.failure, message: e.toString()));
    }
  }
}
