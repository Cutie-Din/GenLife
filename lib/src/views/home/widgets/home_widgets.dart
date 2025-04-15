import 'package:genlife_mobi/src/shared/app_export.dart';

String formatCurrency(dynamic value) {
  if (value == null || value.toString().isEmpty) return '';
  try {
    final intValue = value is int ? value : int.tryParse(value.toString()) ?? 0;
    return '${NumberFormat('#,###', 'vi_VN').format(intValue)} đ';
  } catch (_) {
    return '';
  }
}

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

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'top_categories'.tr(),
        style: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      Gap(20),

      Skeletonizer(
        enabled: isLoading,
        child: SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: isLoading ? 5 : categories.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item = isLoading ? {'name': '', 'course_count': ''} : categories[index];

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
                      item['name'] ?? '',
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
                      '${item['course_count']} khóa học',
                      style: GoogleFonts.inter(fontSize: 12, color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    ],
  );
}

Widget featuredBoxList({
  required bool isLoading,
  required List<Map<String, dynamic>> items,
  String? title,
}) {
  return Column(
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
      ],
      Gap(20),
      Skeletonizer(
        enabled: isLoading,
        child: SizedBox(
          height: ResponsiveHelper.hp(25),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: isLoading ? 5 : items.length,
            separatorBuilder: (_, __) => SizedBox(width: ResponsiveHelper.wp(3)),
            itemBuilder: (context, index) {
              final item =
                  isLoading
                      ? {
                        'id': '',
                        'title': '',
                        'assigned_instructor': '',
                        'image': '',
                        'price': '',
                        'discount_price': '',
                      }
                      : items[index];

              return Padding(
                padding: EdgeInsets.only(bottom: ResponsiveHelper.hp(1.5)),
                child: Container(
                  width: ResponsiveHelper.wp(40), // Thay cho 150
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
                            child: CachedNetworkImage(
                              imageUrl: item['image'] ?? '',
                              width: ResponsiveHelper.wp(50),
                              height: ResponsiveHelper.hp(12),
                              fit: BoxFit.cover,
                              placeholder:
                                  (context, url) => Container(
                                    width: ResponsiveHelper.wp(50),
                                    height: ResponsiveHelper.hp(12),
                                    color: Colors.grey[200],
                                  ),
                              errorWidget:
                                  (context, url, error) => Container(
                                    width: ResponsiveHelper.wp(50),
                                    height: ResponsiveHelper.hp(12),
                                    color: Colors.grey[300],
                                    child: Icon(Icons.error, color: Colors.grey),
                                  ),
                            ),
                          ),
                          if (!isLoading && (item['price']?.toString().isNotEmpty ?? false))
                            Positioned(
                              top: ResponsiveHelper.hp(0.8),
                              right: ResponsiveHelper.wp(1.5),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: ResponsiveHelper.wp(1.5),
                                  vertical: ResponsiveHelper.hp(0.5),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Row(
                                  children: [
                                    // Display price with line-through decoration (black color)
                                    Text(
                                      formatCurrency(item['price']),
                                      style: GoogleFonts.inter(
                                        fontSize: ResponsiveHelper.sp(10),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        decoration:
                                            TextDecoration.lineThrough, // Gạch ngang cho price
                                        decorationColor: Colors.black, // Màu gạch ngang là màu đen
                                        decorationThickness: 2, // Độ dày của gạch ngang
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ), // Thêm khoảng cách giữa price và discount_price
                                    Text(
                                      '/',
                                      style: GoogleFonts.inter(
                                        fontSize: ResponsiveHelper.sp(10),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ), // Thêm khoảng cách giữa dấu '/' và discount_price
                                    Text(
                                      formatCurrency(item['discount_price']),
                                      style: GoogleFonts.inter(
                                        fontSize: ResponsiveHelper.sp(10),
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: ResponsiveHelper.wp(2),
                          vertical: ResponsiveHelper.hp(1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['title'] ?? '',
                              style: GoogleFonts.inter(
                                fontSize: ResponsiveHelper.sp(14),
                                fontWeight: FontWeight.w600,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: ResponsiveHelper.hp(0.5)),
                            Text(
                              item['assigned_instructor'] ?? '',
                              style: GoogleFonts.inter(
                                fontSize: ResponsiveHelper.sp(12),
                                color: Colors.grey[600],
                              ),
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
      ),
    ],
  );
}

Widget popularBoxList({
  required bool isLoading,
  required List<Map<String, dynamic>> items,
  String? title,
}) {
  return Column(
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
      ],
      Gap(20),

      Skeletonizer(
        enabled: isLoading,
        child: SizedBox(
          height: ResponsiveHelper.hp(25),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: isLoading ? 5 : items.length,
            separatorBuilder: (_, __) => SizedBox(height: ResponsiveHelper.hp(1.5)),
            itemBuilder: (context, index) {
              final item = isLoading ? {'title': '', 'author': '', 'image': ''} : items[index];

              return Padding(
                padding: ResponsiveHelper.symmetric(vertical: 1),
                child: Container(
                  width: ResponsiveHelper.wp(90),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(ResponsiveHelper.wp(3)),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, blurRadius: 4, offset: const Offset(0, 2)),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(ResponsiveHelper.wp(3)),
                          bottomLeft: Radius.circular(ResponsiveHelper.wp(3)),
                        ),
                        child: Image.network(
                          item['image'] ?? '',
                          width: ResponsiveHelper.wp(40),
                          height: ResponsiveHelper.hp(12),
                          fit: BoxFit.cover,
                          errorBuilder:
                              (_, __, ___) => Container(
                                width: ResponsiveHelper.wp(40),
                                height: ResponsiveHelper.hp(12),
                                color: Colors.grey[300],
                              ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: ResponsiveHelper.symmetric(horizontal: 4, vertical: 2),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['title'] ?? '',
                                style: GoogleFonts.inter(
                                  fontSize: ResponsiveHelper.sp(14),
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: ResponsiveHelper.hp(1)),
                              Text(
                                item['author'] ?? '',
                                style: GoogleFonts.inter(
                                  fontSize: ResponsiveHelper.sp(12),
                                  color: Colors.grey[600],
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ],
  );
}
