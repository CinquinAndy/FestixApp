import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class DividerCustom extends StatelessWidget {
  final double height;
  final double width;
  const DividerCustom({Key? key, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              kcGrey100OpacityColor,
              kcGrey400Color,
              kcGrey100OpacityColor,
            ],
          )
        ),
      ),
    );
  }
}
