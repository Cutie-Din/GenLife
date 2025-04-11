import 'package:genlife_mobi/src/shared/app_export.dart';

enum AppRoute { splash, navigationPane, home, cart, dashboard, account }

extension AppRouteExt on AppRoute {
  String get name {
    switch (this) {
      case AppRoute.splash:
        return '/splash';
      case AppRoute.navigationPane:
        return '/navigation_pane';
      case AppRoute.home:
        return '/home';
      case AppRoute.cart:
        return '/cart';
      case AppRoute.dashboard:
        return '/dashboard';
      case AppRoute.account:
        return '/account';
    }
  }

  static AppRoute? from(String? name) {
    for (final item in AppRoute.values) {
      if (item.name == name) {
        return item;
      }
    }
    return null;
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (AppRouteExt.from(settings.name)) {
      case AppRoute.splash:
        return GetPageRoute(settings: settings, page: () => const SplashScreen());

      case AppRoute.navigationPane:
        return GetPageRoute(
          settings: settings,
          page: () => const NavigationPane(),
          bindings: [
            BindingsBuilder.put(() => HomeCubit(Get.find(), Get.find())),
            // BindingsBuilder.put(() => HistoryCubit(Get.find(), Get.find())),
            // BindingsBuilder.put(() => NotificationCubit(Get.find(), Get.find())),
            // BindingsBuilder.put(() => AccountCubit(Get.find(), Get.find())),
          ],
        );

      case AppRoute.home:
        return GetPageRoute(
          settings: settings,
          page: () => HomeScreen(),
          bindings: [BindingsBuilder.put(() => HomeCubit(Get.find(), Get.find()))],
        );
      case AppRoute.cart:
        return GetPageRoute(
          settings: settings,
          page: () => const CartScreen(),
          // bindings: [BindingsBuilder.put(() => DashboardCubit(Get.find(), Get.find()))],
        );
      case AppRoute.dashboard:
        return GetPageRoute(
          settings: settings,
          page: () => const CourseScreen(),
          // bindings: [BindingsBuilder.put(() => DashboardCubit(Get.find(), Get.find()))],
        );
      case AppRoute.account:
        return GetPageRoute(
          settings: settings,
          page: () => const AccountScreen(),
          // bindings: [BindingsBuilder.put(() => DashboardCubit(Get.find(), Get.find()))],
        );

      default:
        return GetPageRoute(
          settings: settings,
          page:
              () => Scaffold(
                appBar: AppBar(),
                body: Center(child: Text('No route defined for ${settings.name}')),
              ),
        );
    }
  }
}
