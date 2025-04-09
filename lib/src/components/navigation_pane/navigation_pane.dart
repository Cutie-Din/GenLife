import 'package:genlife_mobi/src/shared/app_export.dart';

class NavigationPane extends StatefulWidget {
  const NavigationPane({super.key});

  @override
  State<NavigationPane> createState() => _NavigationPaneState();
}

class _NavigationPaneState extends State<NavigationPane> {
  PageController controller = PageController(initialPage: 0);
  var selected = 0;

  Widget buildBottomBarItem({required String assetPath, required bool isSelected}) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          assetPath,
          width: 24,
          height: 24,
          color: isSelected ? AppColors.active : AppColors.inactive,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const HomeScreen(),
          const CartScreen(),
          const CourseScreen(),
          const AccountScreen(),
        ],
      ),

      bottomNavigationBar: Stack(
        children: [
          StylishBottomBar(
            option: AnimatedBarOptions(
              iconStyle: IconStyle.animated,
              barAnimation: BarAnimation.fade,
            ),
            items: [
              BottomBarItem(
                icon: buildBottomBarItem(
                  assetPath: AppImages.home_inactive,
                  isSelected: selected == 0,
                ),
                title: Text(
                  'Trang chủ',
                  style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w600),
                ),
                selectedIcon: buildBottomBarItem(
                  assetPath: AppImages.home_active,
                  isSelected: selected == 0,
                ),
                selectedColor: AppColors.active,
                unSelectedColor: AppColors.inactive,
              ),
              BottomBarItem(
                icon: buildBottomBarItem(
                  assetPath: AppImages.cart_inactive,
                  isSelected: selected == 1,
                ),
                selectedIcon: buildBottomBarItem(
                  assetPath: AppImages.cart_active,
                  isSelected: selected == 1,
                ),
                title: Text(
                  'Giỏ hàng',
                  style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w600),
                ),
                selectedColor: AppColors.active,
                unSelectedColor: AppColors.inactive,
              ),

              BottomBarItem(
                icon: buildBottomBarItem(
                  assetPath: AppImages.dashboard_inactive,
                  isSelected: selected == 2,
                ),
                selectedIcon: buildBottomBarItem(
                  assetPath: AppImages.dashboard_active,
                  isSelected: selected == 2,
                ),
                title: Text(
                  'Khoá học',
                  style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w600),
                ),
                selectedColor: AppColors.active,
                unSelectedColor: AppColors.inactive,
              ),
              BottomBarItem(
                icon: buildBottomBarItem(
                  assetPath: AppImages.account_inactive,
                  isSelected: selected == 3,
                ),
                selectedIcon: buildBottomBarItem(
                  assetPath: AppImages.account_active,
                  isSelected: selected == 3,
                ),
                title: Text(
                  'Tài khoản',
                  style: GoogleFonts.inter(fontSize: 10, fontWeight: FontWeight.w600),
                ),
                selectedColor: AppColors.active,
                unSelectedColor: AppColors.inactive,
              ),
            ],
            currentIndex: selected,
            onTap: (index) {
              setState(() {
                selected = index;
                controller.jumpToPage(index);
              });
            },
          ),
        ],
      ),
    );
  }
}
