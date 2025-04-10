import 'package:genlife_mobi/src/shared/app_export.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // _buildDrawerHeader1(context),
          _buildDrawerHeader2(context),
          _buildListTile(icon: Icons.settings, title: 'settings'.tr()),
          _buildListTile(icon: Icons.contact_support, title: 'support'.tr()),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader1(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.blue),
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 30, backgroundImage: AssetImage(AppImages.avatar)),
                Gap(3),
                Text(
                  'name'.tr(),
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Gap(3),
                Text(
                  '${'balance'.tr()}: 500.000đ',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader2(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.blue),
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 30, backgroundImage: AssetImage(AppImages.avatar)),
                Gap(8),
                AppButton(
                  buttonText: 'login'.tr(),
                  onPressed: () {
                    print('Đăng nhập');
                  },
                  sizeButton: 'medium', // hoặc 'medium', 'large' tùy bạn
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile({required IconData icon, required String title, VoidCallback? onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Material(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
        elevation: 3,
        child: ListTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          leading: Icon(icon, color: Colors.black87),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
          trailing: Icon(Icons.chevron_right, size: 20, color: Colors.grey),
          onTap: onTap,
        ),
      ),
    );
  }
}
