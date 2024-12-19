import 'package:flutter/material.dart';
import 'package:parkir_modern_ui/theme/colors_pallete.dart';
 
class Homepage extends StatelessWidget {
  const  Homepage({super.key});
   @override
  Widget build(BuildContext context) {
    return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorPalette.white,
      selectedItemColor: ColorPalette.primaryColor,
      unselectedItemColor: ColorPalette.grey,
      showSelectedLabels: true,
      items: const [
        BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Discover',
        ),
        BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Orders',
        ),
        BottomNavigationBarItem(
      icon: Icon(Icons.notifications),
      label: 'Wallet',
        ),
        BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Settings',
        ),
      ],
    ),
    );
  }

  
}