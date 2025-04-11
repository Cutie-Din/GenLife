import 'package:genlife_mobi/src/shared/app_export.dart';

class AppSearch extends StatelessWidget {
  const AppSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: Material(
        elevation: 0.3,
        borderRadius: BorderRadius.circular(12),
        child: TextField(
          style: const TextStyle(fontSize: 14),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.grey[500], size: 18),
            contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.grey, width: 0.8),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: Colors.blue, width: 1.2),
            ),
            fillColor: Colors.white,
            filled: true,
            hintStyle: const TextStyle(fontSize: 13, color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
