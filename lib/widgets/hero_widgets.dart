import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkir_modern_ui/theme/colors_pallete.dart';

class HeroWidgets extends StatelessWidget{
  const HeroWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        content(),
        image(),
        search(),
      ],
    );
  }
}

Container content() {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 24),
    padding: const EdgeInsets.only(
      top: 76,
      left: 16,
      right: 16,
      bottom: 54,
    ),
    color: ColorPalette.primaryColorDark,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
               image:  const DecorationImage(
                 image: AssetImage('assets/images/damar.jpeg'),
                 fit: BoxFit.cover,
                
              ),
                borderRadius: BorderRadius.circular(50),
            ),
            ),
            // Image.asset('assets/images/angga.png', width: 50, height: 50),
             const Gap(8),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Howdy",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ColorPalette.secondaryText,
                  ) ),
                  const Gap(2),
                  Text("Damar Galih",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.white,
                  ) )
               ],
             ),
          ],

          
        ),
        const Gap(21),
        Column(
           
            children: [
            Text("Get Your \n Secure Park",
            style: GoogleFonts.plusJakartaSans(
                fontSize: 30,
                height: 1,
                fontWeight: FontWeight.bold,
                color: ColorPalette.white,
                )),
          ],
        ),
    ],
    )
  );
}

  Widget image() {
    return Positioned(
      right: 0,
      bottom: 54,
      child: Image.asset('assets/images/hero.png', width: 200),
    );
  }
  Widget search() {
    return Positioned(
      bottom: 0,
      left: 16,
      right: 16,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 50,
        decoration: BoxDecoration(
          color: ColorPalette.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
          border: Border.all(
            color: ColorPalette.grey,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Icon(Icons.search, color: ColorPalette.grey),
            const Gap(8),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for parking',
                  hintStyle: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: ColorPalette.grey,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
