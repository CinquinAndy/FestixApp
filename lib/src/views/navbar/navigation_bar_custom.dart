import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/shared/shape_custom.dart';
import 'package:b3_festix/src/views/navbar/nav_button_custom.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final bool isHomeSelectionned;
  final bool isEventsSelectionned;
  final bool isFestivalSelectionned;

  const CustomNavBar({Key? key, this.isHomeSelectionned = true, this.isEventsSelectionned = false, this.isFestivalSelectionned = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomNavButton(
            icon: Icon(Icons.home_rounded, color: isHomeSelectionned ? kcBlue500Color : kcGrey300Color),
            isSelectionned: isHomeSelectionned),
        CustomNavButton(
          icon: Icon(Icons.event_rounded, color: isEventsSelectionned ? kcBlue500Color : kcGrey300Color),
          isSelectionned: isEventsSelectionned,
        ),
        CustomNavButton(
          icon: Icon(Icons.audiotrack_rounded, color: isFestivalSelectionned ? kcBlue500Color : kcGrey300Color),
          isSelectionned: isFestivalSelectionned,
        ),
      ],
    );
  }
}
