import 'package:genlife_mobi/src/shared/app_export.dart';

part 'home_state.freezed.dart';

enum HomeStatus { initial, loading, success, failure }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) final HomeStatus status,
    @Default([]) List<TopCategoriesModel> topCategories,
    TopCategoriesModel? category,

    @Default('') final String message,
  }) = _HomeState;
}
