import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

import 'nav_button_custom.dart';

class CustomNavBar extends StatelessWidget {
  final bool isHomeSelectionned;
  final bool isFestivalsSelectionned;
  final bool isArtistsSelectionned;

  const CustomNavBar({Key? key, this.isHomeSelectionned = true, this.isFestivalsSelectionned = false, this.isArtistsSelectionned = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomNavButton(
            icon: Icon(Icons.home_rounded, color: isHomeSelectionned ? kcBlue500Color : kcGrey300Color),
            isSelectionned: isHomeSelectionned),
        CustomNavButton(
          icon: Icon(Icons.event_rounded, color: isFestivalsSelectionned ? kcBlue500Color : kcGrey300Color),
          isSelectionned: isFestivalsSelectionned,
        ),
        CustomNavButton(
          icon: Icon(Icons.audiotrack_rounded, color: isArtistsSelectionned ? kcBlue500Color : kcGrey300Color),
          isSelectionned: isArtistsSelectionned,
        ),
      ],
    );
  }
}
