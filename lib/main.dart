import 'dart:io';

// import 'package:device_preview/device_preview.dart';
import 'package:genlife_mobi/src/shared/app_export.dart';
import 'package:genlife_mobi/src/utils/app_dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  provideDependencies();
  final log = getLogger('Main');

  String deviceId = await AppConfig.getDeviceId();
  String platform =
      Platform.isAndroid
          ? 'Android'
          : Platform.isIOS
          ? 'iOS'
          : 'Unknown';

  log.i(platform);

  // runApp(DevicePreview(enabled: !kReleaseMode, builder: (context) => const MyApp()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalManager _globalManager = Get.find();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'GenLife',
      initialRoute: AppRoute.splash.name,
      onGenerateRoute: AppRouteExt.generateRoute,
      navigatorKey: _globalManager.navigatorKey,
    );
  }
}
