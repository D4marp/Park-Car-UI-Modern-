import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainertWidgets extends StatelessWidget {
  final String title;
  final Widget child;

  const ContainertWidgets({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column (
     children: [header(),
      const Gap(16),child, const SizedBox()],
    );
  }
   
  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:16),
     child: Row(
      children: [
        Text (title,
        style: GoogleFonts.plusJakartaSans(
          fontSize: 16,
          fontWeight: FontWeight.w800,
         
        ),
        ),
      ],
     ),
    );
  }
}