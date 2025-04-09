import 'package:genlife_mobi/src/shared/app_export.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 30, backgroundImage: AssetImage(AppImages.avatar)),
                Gap(8),
                Text(
                  'Test', // thay bằng tên thực hoặc dynamic nếu cần
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Gap(2),
                Text(
                  'Số dư: 500.000đ',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          ListTile(leading: Icon(Icons.settings), title: Text('Cài đặt')),
        ],
      ),
    );
  }
}
