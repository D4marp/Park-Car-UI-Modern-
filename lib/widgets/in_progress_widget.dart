import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:parkir_modern_ui/theme/colors_pallete.dart';
import 'package:parkir_modern_ui/widgets/button_widget.dart';
import 'package:parkir_modern_ui/widgets/containert_widgets.dart';

class InProgressWidget extends StatelessWidget {
  const InProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainertWidgets(
      title: 'In Progress Parking to',
      child: Container(
        width: double.infinity,
        margin:  const EdgeInsets.symmetric(horizontal: 16),
        padding : const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: ColorPalette.primaryColor,
          borderRadius: BorderRadius.circular(16),
         image: const DecorationImage(
           image: AssetImage('assets/images/bg_in_progress.png'),
           fit: BoxFit.cover,
         ),
         boxShadow: [
           BoxShadow(
             color: ColorPalette.primaryColor.withOpacity(0.5),
             blurRadius: 10,
             offset: const Offset(0, 5),
           ),
         ],
        ),
        child: Row(
          children: [SvgPicture.asset('assets/svgs/grid.svg', height: 26 ,width: 26,),
           const Gap(10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mars Tower',
                  style: TextStyle(
                    color: ColorPalette.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Gap(4),
                Text('Lot A-12',
                  style: TextStyle(
                    color: ColorPalette.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),

              ],
            ),
         const Gap (10),
          const Spacer(),
          ButtonWidget(text: 'Open Maps', onTap: (){}),

          ]
        ),
      ),
    );
  }
}