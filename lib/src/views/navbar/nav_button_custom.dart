import 'package:b3_festix/src/shared/shape_custom.dart';
import 'package:flutter/material.dart';

class CustomNavButton extends StatelessWidget {
  final Icon icon;
  final bool isSelectionned;
  const CustomNavButton({Key? key, required this.icon, this.isSelectionned = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelectionned ?
    Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: icon,
        ),
        Positioned(
            bottom: -15,
            left: -11,

            child: //Add this CustomPaint widget to the Widget Tree
            CustomPaint(
              size: const Size(50,25), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
              painter: RPSCustomPainter(),
            )
        )
      ],
    ) :
    Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: icon,
    );
  }
}
