import 'package:genlife_mobi/src/shared/app_export.dart';

class ResponsiveHelper {
  static double get screenWidth => Get.width;
  static double get screenHeight => Get.height;

  static bool get isTablet => Get.width >= 600;

  // Chiều rộng dựa theo tỉ lệ màn hình
  static double wp(double percent) => screenWidth * percent / 100;

  // Chiều cao dựa theo tỉ lệ màn hình
  static double hp(double percent) => screenHeight * percent / 100;

  // Text size tự động scale
  static double sp(double fontSize) {
    double scaleFactor = isTablet ? 1.3 : (screenWidth / 375);
    return fontSize * scaleFactor;
  }

  // Padding/Margin responsive
  static EdgeInsets symmetric({double horizontal = 0, double vertical = 0}) {
    return EdgeInsets.symmetric(horizontal: wp(horizontal), vertical: hp(vertical));
  }

  // Device type
  static String get deviceType => isTablet ? 'Tablet' : 'Phone';
}
