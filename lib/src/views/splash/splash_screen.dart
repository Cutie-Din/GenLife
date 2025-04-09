import 'package:flutter/cupertino.dart';
import 'package:genlife_mobi/src/shared/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _nextScreen() async {
    AppRoute nextRoute = AppRoute.navigationPane;
    Get.offAllNamed(nextRoute.name);
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () => {_nextScreen()});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          children: [
            Image.asset(AppImages.splash, width: Get.width, height: Get.height, fit: BoxFit.cover),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(child: CupertinoActivityIndicator()),
            ),
          ],
        ),
      ),
    );
  }
}
