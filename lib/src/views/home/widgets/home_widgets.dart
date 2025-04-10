import 'package:genlife_mobi/src/shared/app_export.dart';

Widget topCategories({required bool isLoading, required List<Map<String, dynamic>> categories}) {
  final List<Color> colorPalette = [
    AppColors.primary,
    Colors.orangeAccent,
    Colors.green,
    Colors.teal,
    Colors.deepPurpleAccent,
    Colors.indigo,
    Colors.pinkAccent,
    Colors.cyan,
  ];

  return Skeletonizer(
    enabled: isLoading,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'top_categories'.tr(),
          style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700),
        ),
        Gap(12),
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: isLoading ? 5 : categories.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item = isLoading ? {'title': '', 'total_course': ''} : categories[index];

              final Color bgColor =
                  isLoading ? Colors.grey.shade300 : colorPalette[index % colorPalette.length];

              return Container(
                width: 120,
                decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      item['title'] ?? '',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Gap(4),
                    Text(
                      '${item['total_course']} khóa học',
                      style: GoogleFonts.inter(fontSize: 12, color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Widget horizontalBoxList({
  required bool isLoading,
  required List<Map<String, dynamic>> items,
  String? title,
}) {
  return Skeletonizer(
    enabled: isLoading,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title.tr(), style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700)),
              InkWell(
                onTap: () {
                  print('Tapped');
                },
                child: Row(
                  children: [
                    Text(
                      'see_all'.tr(),
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.arrow_forward_ios, size: 12, color: Colors.blue),
                  ],
                ),
              ),
            ],
          ),

          Gap(12),
        ],

        SizedBox(
          height: 180,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: isLoading ? 5 : items.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item =
                  isLoading
                      ? {'title': '', 'author': '', 'image': '', 'discount': ''}
                      : items[index];

              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            ),
                            child: Image.network(
                              item['image'] ?? '',
                              width: 150,
                              height: 90,
                              fit: BoxFit.cover,
                              errorBuilder:
                                  (_, __, ___) =>
                                      Container(width: 150, height: 90, color: Colors.grey[300]),
                            ),
                          ),
                          if (!isLoading && (item['discount'] ?? '').isNotEmpty)
                            Positioned(
                              top: 6,
                              right: 6,
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  '${item['discount']}',
                                  style: GoogleFonts.inter(
                                    fontSize: 10,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title'] ?? '',
                              style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Gap(4),
                            Text(
                              item['author'] ?? '',
                              style: GoogleFonts.inter(fontSize: 12, color: Colors.grey[600]),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
