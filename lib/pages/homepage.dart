import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:parkir_modern_ui/widgets/category_widget.dart';
import 'package:parkir_modern_ui/widgets/fresh_lot_widget.dart';
import 'package:parkir_modern_ui/widgets/in_progress_widget.dart';
import 'package:parkir_modern_ui/widgets/navigationbar.dart';
import 'package:parkir_modern_ui/widgets/nearby_parking_widgets.dart';

import '../widgets/hero_widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xFFF5F5F5),
      bottomNavigationBar: Navigationbar(),
      body: SingleChildScrollView(
       child : Column(
        children: [ 
           HeroWidgets(),
           Gap(20),
           InProgressWidget(),
            Gap(20),
            NearbyParkingWidgets(),
            Gap(20),
            CategoryWidget(),
            Gap(20),
            FreshLotWidget(),
        ],
       ),
      ),
    );
  }
}
