import 'dart:io';

import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:genlife_mobi/src/shared/app_export.dart';
import 'package:genlife_mobi/src/utils/app_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await EasyLocalization.ensureInitialized();

  provideDependencies();
  final log = getLogger('Main');

  String deviceId = await AppConfig.getDeviceId();
  String platform =
      Platform.isAndroid
          ? 'Android'
          : Platform.isIOS
          ? 'iOS'
          : 'Unknown';

  log.i("Platform: $platform\nDevicdeID: $deviceId");

  // runApp(
  //   DevicePreview(
  //     enabled: !kReleaseMode,
  //     builder:
  //         (context) => EasyLocalization(
  //           supportedLocales: const [Locale('vi')],
  //           path: 'assets/langs',
  //           fallbackLocale: const Locale('vi'),
  //           child: MyApp(),
  //         ),
  //   ),
  // );
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('vi')],
      path: 'assets/langs',
      fallbackLocale: Locale('vi'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalManager _globalManager = Get.find();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // useInheritedMediaQuery: true,

      // builder: DevicePreview.appBuilder,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      debugShowCheckedModeBanner: false,
      title: 'GenLife',
      initialRoute: AppRoute.splash.name,
      onGenerateRoute: AppRouteExt.generateRoute,
      navigatorKey: _globalManager.navigatorKey,
    );
  }
}
