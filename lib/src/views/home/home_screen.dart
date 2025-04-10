import 'package:genlife_mobi/src/shared/app_export.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppSearch(),
              Gap(20),
              topCategories(
                isLoading: false,
                categories: [
                  {'title': 'Flutter', 'total_course': 10},
                  {'title': 'React', 'total_course': 8},
                  {'title': 'UI/UX', 'total_course': 5},
                  {'title': 'Python', 'total_course': 7},
                  {'title': 'Marketing', 'total_course': 6},
                  {'title': 'DevOps', 'total_course': 4},
                ],
              ),
              Gap(20),
              horizontalBoxList(
                isLoading: false,
                title: 'courses',
                items: [
                  {
                    'title': 'Flutter Cơ Bản',
                    'author': 'Nguyễn Văn A',
                    'image': 'https://picsum.photos/200',
                    'discount': '-20%',
                  },
                  {
                    'title': 'ReactJS Nâng Cao',
                    'author': 'Trần Thị B',
                    'image': 'https://picsum.photos/201',
                    'discount': '-15%',
                  },
                  {
                    'title': 'ReactJS Nâng Cao',
                    'author': 'Trần Thị B',
                    'image': 'https://picsum.photos/202',
                    'discount': '-15%',
                  },
                ],
              ),
              Gap(20),
              horizontalBoxList(
                isLoading: false,
                title: 'classes',
                items: [
                  {
                    'title': 'Flutter Cơ Bản',
                    'author': 'Nguyễn Văn A',
                    'image': 'https://picsum.photos/200',
                    'discount': '-20%',
                  },
                  {
                    'title': 'ReactJS Nâng Cao',
                    'author': 'Trần Thị B',
                    'image': 'https://picsum.photos/201',
                    'discount': '-15%',
                  },
                  {
                    'title': 'ReactJS Nâng Cao',
                    'author': 'Trần Thị B',
                    'image': 'https://picsum.photos/202',
                    'discount': '-15%',
                  },
                ],
              ),
              Gap(20),
              horizontalBoxList(
                isLoading: false,
                title: 'quizzes',
                items: [
                  {
                    'title': 'Flutter Cơ Bản',
                    'author': 'Nguyễn Văn A',
                    'image': 'https://picsum.photos/200',
                    'discount': '-20%',
                  },
                  {
                    'title': 'ReactJS Nâng Cao',
                    'author': 'Trần Thị B',
                    'image': 'https://picsum.photos/201',
                    'discount': '-15%',
                  },
                  {
                    'title': 'ReactJS Nâng Cao',
                    'author': 'Trần Thị B',
                    'image': 'https://picsum.photos/202',
                    'discount': '-15%',
                  },
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
