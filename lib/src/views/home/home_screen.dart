import 'package:genlife_mobi/src/shared/app_export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RefreshController _refreshController = RefreshController();
  HomeCubit get _cubit => Get.find<HomeCubit>();
  bool isLoading = false;

  Future<void> _onRefresh() async {
    await _cubit.getTopCate();

    _refreshController.refreshCompleted();
  }

  @override
  void initState() {
    _cubit.getTopCate();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(backgroundColor: AppColors.button, title: const AppSearch()),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        bloc: _cubit,
        builder: (context, state) {
          return SmartRefresher(
            controller: _refreshController,
            onRefresh: _onRefresh,
            enablePullDown: true,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Skeletonizer(
                    enabled: state.status == HomeStatus.loading,
                    child: topCategories(
                      isLoading: state.status == HomeStatus.loading,
                      categories:
                          state.topCategories
                              .map((e) => {'name': e.name, 'course_count': e.course_count})
                              .toList(),
                    ),
                  ),
                  Gap(10),
                  Skeletonizer(
                    enabled: state.status == HomeStatus.loading,
                    child: featuredBoxList(
                      isLoading: state.status == HomeStatus.loading,
                      title: 'featured_courses',
                      items: [
                        {
                          'title': 'Flutter Cơ Bản',
                          'author': 'Nguyễn Văn A',
                          'image': 'https://picsum.photos/200',
                          'discount': '-20%',
                        },
                      ],
                    ),
                  ),
                  Gap(10),
                  Skeletonizer(
                    enabled: state.status == HomeStatus.loading,
                    child: featuredBoxList(
                      isLoading: state.status == HomeStatus.loading,
                      title: 'featured_classes',
                      items: [
                        {
                          'title': 'Flutter Cơ Bản',
                          'author': 'Nguyễn Văn A',
                          'image': 'https://picsum.photos/200',
                          'discount': '-20%',
                        },
                      ],
                    ),
                  ),
                  Gap(10),
                  Skeletonizer(
                    enabled: state.status == HomeStatus.loading,
                    child: featuredBoxList(
                      isLoading: state.status == HomeStatus.loading,
                      title: 'quizzes',
                      items: [
                        {
                          'title': 'Flutter Cơ Bản',
                          'author': 'Nguyễn Văn A',
                          'image': 'https://picsum.photos/200',
                          'discount': '-20%',
                        },
                      ],
                    ),
                  ),
                  Gap(10),
                  Skeletonizer(
                    enabled: state.status == HomeStatus.loading,
                    child: popularBoxList(
                      isLoading: state.status == HomeStatus.loading,
                      title: 'popular_courses',
                      items: [
                        {
                          'title': 'Flutter Cơ Bản',
                          'author': 'Nguyễn Văn A',
                          'image': 'https://picsum.photos/200',
                        },
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
