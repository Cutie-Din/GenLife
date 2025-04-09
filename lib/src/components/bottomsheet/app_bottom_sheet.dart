import 'package:genlife_mobi/src/shared/app_export.dart';

class AppBottomSheet extends StatelessWidget {
  final VoidCallback onClose;

  const AppBottomSheet({super.key, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: double.infinity,
        color: Colors.white,
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15)),
      ),
    );
  }
}
