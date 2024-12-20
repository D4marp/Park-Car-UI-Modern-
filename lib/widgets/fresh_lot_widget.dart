import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class FreshLotWidget extends StatelessWidget {
  const FreshLotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> parkingSpots = [
      {
        'image': 'assets/images/park_1.png',
        'title': 'Mars Tower',
        'distance': '2.4km',
        'price': '\$6/hr',
        'reviews': '14,593',
        'stars': '4.5'
      },
      {
        'image': 'assets/images/senayan.png',
        'title': 'Senayan City',
        'distance': '3.1km',
        'price': '\$5/hr',
        'reviews': '9,342',
        'stars': '4.0'
      },
      {
        'image': 'assets/images/kota_baru.png',
        'title': 'Surabaya',
        'distance': '1.8km',
        'price': '\$7/hr',
        'reviews': '20,420',
        'stars': '4.8'
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Nearby Parking Spots',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: parkingSpots.length,
          separatorBuilder: (context, index) => const Gap(16),
          itemBuilder: (context, index) {
            final spot = parkingSpots[index];
            return FreshLotItem(
              imagePath: spot['image']!,
              title: spot['title']!,
              distance: spot['distance']!,
              price: spot['price']!,
              reviews: spot['reviews']!,
              stars: spot['stars']!,
            );
          },
        ),
      ],
    );
  }
}

class FreshLotItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String distance;
  final String price;
  final String reviews;
  final String stars;

  const FreshLotItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.distance,
    required this.price,
    required this.reviews,
    required this.stars,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 76,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Gap(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on, size: 16, color: Colors.grey[600]),
                    const Gap(4),
                    Text(
                      distance,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600],
                      ),
                    ),
                    const Gap(16),
                    Icon(Icons.attach_money, size: 16, color: Colors.grey[600]),
                    const Gap(4),
                    Text(
                      price,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const Gap(8),
                Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Icon(
                        index < int.parse(stars.split('.')[0])
                            ? Icons.star
                            : Icons.star_border,
                        size: 18,
                        color: index < double.parse(stars).floor()
                            ? Colors.orange
                            : Colors.grey[400],
                      ),
                    ),
                    const Gap(4),
                    Text(
                      '($reviews)',
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
