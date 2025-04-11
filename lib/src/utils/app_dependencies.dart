import 'package:genlife_mobi/src/shared/app_export.dart';

void provideDependencies() {
  Get.put(AppManager());

  Get.put(NetworkManager());

  Get.lazyPut(() => GlobalManager(), fenix: true);

  Get.lazyPut<Dio>(() => Get.find<NetworkManager>().createDio()..addInterceptors(), fenix: true);

  Get.lazyPut<HomeRepository>(
    () => HomeRepositoryImpl(repo: HomeServiceApi(service: HomeService(Get.find<Dio>()))),
    fenix: true,
  );
}
