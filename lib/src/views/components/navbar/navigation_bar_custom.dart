import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/enum/enum_routesnames.dart';
import 'package:flutter/material.dart';

import 'nav_button_custom.dart';

class CustomNavBar extends StatelessWidget {
  final bool isHomeSelectionned;
  final bool isFestivalsSelectionned;
  final bool isArtistsSelectionned;
  final bool isSideTitleEnabled;

  const CustomNavBar(
      {Key? key,
      this.isHomeSelectionned = true,
      this.isFestivalsSelectionned = false,
      this.isArtistsSelectionned = false,
      required this.isSideTitleEnabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isSideTitleEnabled ? const EdgeInsets.fromLTRB(20, 0, 0, 0) : const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomNavButton(
            icon: Icon(Icons.home_rounded,
                color: isHomeSelectionned ? kcBlue500Color : kcGrey300Color),
            isSelectionned: isHomeSelectionned,
            toWhere: enum_routesnames.home,
          ),
          CustomNavButton(
            icon: Icon(Icons.celebration_rounded,
                color:
                    isFestivalsSelectionned ? kcBlue500Color : kcGrey300Color),
            isSelectionned: isFestivalsSelectionned,
            toWhere: enum_routesnames.festivals,
          ),
          CustomNavButton(
            icon: Icon(Icons.audiotrack_rounded,
                color: isArtistsSelectionned ? kcBlue500Color : kcGrey300Color),
            isSelectionned: isArtistsSelectionned,
            toWhere: enum_routesnames.artists,
          ),
        ],
      ),
    );
  }
}
// ? 
