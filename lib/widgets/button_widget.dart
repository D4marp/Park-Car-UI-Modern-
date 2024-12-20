import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkir_modern_ui/theme/colors_pallete.dart';

class ButtonWidget extends StatelessWidget{
  final String text;
  final VoidCallback onTap;
  const ButtonWidget({super.key, required this.text, required this.onTap});
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: ColorPalette.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      child:  Text(text),
      
    );
  }
}