import 'dart:ui';

import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class MainPersonnalizedScafold extends StatelessWidget {
  Widget content;


  MainPersonnalizedScafold(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbgGreyColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                child: Container(
                  child: Container(
                    child: Container(
                      child: Container(
                        // ****************************** Gradient Mid left
                        child: Scaffold(
                          backgroundColor: Colors.transparent,
                          appBar: AppBar(
                            title: const BoxText.heading2("FESTIX"),
                            backgroundColor: Colors.transparent,
                            elevation: 0.0,
                          ),
                        ),
                        decoration: const BoxDecoration(
                          gradient: RadialGradient(
                            center: Alignment.centerLeft,
                            radius: 0.8,
                            colors: [
                              kbgPurpleColor,
                              kbgTransparentColor,
                            ],
                            focal: Alignment.centerLeft,
                          ),
                        ),
                      ),
                      // ****************************** Gradient Top left
                      decoration: const BoxDecoration(
                        gradient: RadialGradient(
                          center: Alignment.topLeft,
                          radius: 0.6,
                          colors: [
                            kbgGreenColor,
                            kbgTransparentColor,
                          ],
                        ),
                      ),
                    ),
                    // ****************************** Gradient Top right
                    decoration: const BoxDecoration(
                      gradient: RadialGradient(
                        center: Alignment.topRight,
                        radius: 0.6,
                        colors: [
                          kbgBlueColor,
                          kbgTransparentColor,
                        ],
                      ),
                    ),
                  ),
                  // ****************************** Gradient Bottom right
                  decoration: const BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment.bottomRight,
                      radius: 0.9,
                      colors: [
                        kbgBlueColor,
                        kbgTransparentColor,
                      ],
                    ),
                  ),
                ),
                // ****************************** Gradient Top Center
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment.topCenter,
                    radius: 0.4,
                    colors: [
                      kbgPurpleAltColor,
                      kbgTransparentColor,
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
