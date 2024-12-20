import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkir_modern_ui/widgets/containert_widgets.dart';
import 'package:parkir_modern_ui/widgets/stats_widgets.dart';

class NearbyParkingWidgets extends StatelessWidget {
  const NearbyParkingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> parkingSpots = [
      {
        'image': 'assets/images/park_1.png',
        'title': 'Mars Tower',
        'distance': '2.4km',
        'price': '\$6/hr',
        'discount': 'Off 70%'
      },
      {
        'image': 'assets/images/park_2.png',
        'title': 'Venus Plaza',
        'distance': '3.1km',
        'price': '\$5/hr',
        'discount': 'Off 50%'
      },
      {
        'image': 'assets/images/park_3.png',
        'title': 'Jupiter Mall',
        'distance': '1.8km',
        'price': '\$7/hr',
        'discount': 'Off 30%'
      },
    ];

    return ContainertWidgets(
      title: 'Nearby Parking Spots',
      actionText: 'View All',
      onActionTap: () {},
      child: SizedBox(
        height: 250,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemCount: parkingSpots.length,
          separatorBuilder: (context, index) => const Gap(16),
          itemBuilder: (context, index) => NearbyParkingItem(
            imagePath: parkingSpots[index]['image']!,
            title: parkingSpots[index]['title']!,
            distance: parkingSpots[index]['distance']!,
            price: parkingSpots[index]['price']!,
            discount: parkingSpots[index]['discount']!,
          ),
        ),
      ),
    );
  }
}

class NearbyParkingItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String distance;
  final String price;
  final String discount;

  const NearbyParkingItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.distance,
    required this.price,
    required this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image(),
          Gap(10),
          Text(
            title,
            style: GoogleFonts.plusJakartaSans(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(8),
          SizedBox(
            width: 170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                StatsWidgets(
                  icon: 'assets/svgs/routing.svg',
                  text: distance,
                ),
                StatsWidgets(
                  icon: 'assets/svgs/dollar.svg',
                  text: price,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container image() {
    return Container(
      height: 100,
      width: 170,
      padding: EdgeInsets.all(10),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 35, 251),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          discount,
          style: GoogleFonts.plusJakartaSans(
            fontSize: 12,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}