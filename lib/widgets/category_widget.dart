import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> categories = [
      {
        'icon': 'assets/svgs/grid.svg',
        'title': 'Park Lot',
      },
      {
        'icon': 'assets/svgs/mall.svg',
        'title': 'Malls',
      },
      {
        'icon': 'assets/svgs/big_park.svg',
        'title': 'Big Park',
      },
      {
        'icon': 'assets/svgs/campus.svg',
        'title': 'Campus',
      },
      {
        'icon': 'assets/svgs/office.svg',
        'title': 'Offices',
      },
    ];

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Browse\nCategories',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xFF070624),
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  'View All',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xFF070624),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const Gap(16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categories.map((category) => CategoryItem(
                iconPath: category['icon']!,
                title: category['title']!,
              )).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String iconPath;
  final String title;

  const CategoryItem({
    super.key,
    required this.iconPath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF3F46F9),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: SvgPicture.asset(
                iconPath,
                width: 26,
                height: 26,
              ),
            ),
          ),
          const Gap(10),
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              color: const Color(0xFF070625),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
