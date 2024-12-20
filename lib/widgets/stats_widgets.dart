import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class StatsWidgets extends StatelessWidget{
  final String icon;
  final String text;
  const StatsWidgets({super.key,
  required this.icon,
  required this.text});
  
  @override
  Widget build(BuildContext context) {
   return Row(
    children: [SvgPicture.asset(
      icon,
      width: 16,
      height: 16,
      colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.srcIn),
    ),
    const Gap (4),
    Text(
      text,
      style: GoogleFonts.plusJakartaSans(
        fontSize: 14,
        fontWeight: FontWeight.w800,
        color: Colors.grey,
      ),
    ),
    
    ],
   );
  }
}