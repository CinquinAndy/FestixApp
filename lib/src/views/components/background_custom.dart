import 'dart:ui';

import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class MainPersonnalizedScafold extends StatelessWidget {
  final Widget content;
  final String title;
  final String backtitle;
  final bool isHome;

  const MainPersonnalizedScafold(
      {Key? key,
      required this.content,
      required this.title,
      required this.isHome,
      required this.backtitle})
      : super(key: key);

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
                        child: Padding(
                          padding: isHome
                              ? const EdgeInsets.fromLTRB(20.0, 20, 20.0, 0)
                              : const EdgeInsets.fromLTRB(0, 20, 20, 0),
                          child: Stack(
                            children: [
                              Scaffold(
                                backgroundColor: Colors.transparent,
                                appBar: isHome
                                    ? AppBar(
                                        centerTitle: true,
                                        title: BoxText.heading2(title),
                                        backgroundColor: Colors.transparent,
                                        elevation: 0.0,
                                      )
                                    : AppBar(
                                        title: BoxText.heading3_5(
                                          title,
                                          color: kcGrey200Color,
                                        ),
                                        backgroundColor: Colors.transparent,
                                        elevation: 0.0,
                                      ),
                                body: content,
                              ),
                              Positioned(
                                bottom: 300,
                                left: -15,
                                child: RotatedBox(
                                    quarterTurns: 1,
                                    child: BoxText.headingFat(
                                      backtitle.toUpperCase(),
                                      color: kcGrey50OpacityColor,
                                    )),
                              )
                            ],
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
