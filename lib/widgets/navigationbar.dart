import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:parkir_modern_ui/theme/colors_pallete.dart';

class Navigationbar extends StatelessWidget {
  const Navigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPalette.white,
      selectedItemColor: ColorPalette.primaryColor,
      unselectedItemColor: ColorPalette.grey,
      showSelectedLabels: true,
      selectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: GoogleFonts.plusJakartaSans(
        fontSize: 12,
        fontWeight: FontWeight.w600,
      ),
      items: [
        BottomNavigationBarItem(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(ColorPalette.grey, BlendMode.srcIn),
            child: SvgPicture.asset('assets/svgs/grid.svg'),
          ),
          activeIcon: ColorFiltered(
            colorFilter: const ColorFilter.mode(ColorPalette.primaryColor, BlendMode.srcIn),
            child: SvgPicture.asset('assets/svgs/grid.svg'),
          ),
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(ColorPalette.grey, BlendMode.srcIn),
            child: SvgPicture.asset('assets/svgs/orders.svg'),
          ),
          activeIcon: ColorFiltered(
            colorFilter: const ColorFilter.mode(ColorPalette.primaryColor, BlendMode.srcIn),
            child: SvgPicture.asset('assets/svgs/orders.svg'),
          ),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(ColorPalette.grey, BlendMode.srcIn),
            child: SvgPicture.asset('assets/svgs/wallet.svg'),
          ),
          activeIcon: ColorFiltered(
            colorFilter: const ColorFilter.mode(ColorPalette.primaryColor, BlendMode.srcIn),
            child: SvgPicture.asset('assets/svgs/wallet.svg'),
          ),
          label: 'Wallet',
        ),
        BottomNavigationBarItem(
          icon: ColorFiltered(
            colorFilter: const ColorFilter.mode(ColorPalette.grey, BlendMode.srcIn),
            child: SvgPicture.asset('assets/svgs/setting.svg'),
          ),
          activeIcon: ColorFiltered(
            colorFilter: const ColorFilter.mode(ColorPalette.primaryColor, BlendMode.srcIn),
            child: SvgPicture.asset('assets/svgs/setting.svg'),
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}
