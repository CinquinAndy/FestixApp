import 'dart:ui';

import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../box_ui.dart';

class CustomListTileDouble extends StatelessWidget {
  final String mainTitle;
  final String titleCard;
  final String descriptionCard;
  final String urlBackground;
  final Icon iconTrailing;
  final Icon iconTrailingSecondary;

  const CustomListTileDouble(
      {Key? key,
      required this.mainTitle,
      required this.titleCard,
      required this.descriptionCard,
      required this.urlBackground,
      required this.iconTrailing,
      required this.iconTrailingSecondary})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(urlBackground),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 110.0, 8.0, 0),
        child: Card(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 26, sigmaY: 26),
                  child: ListTile(
                    title: BoxText.heading5(
                      titleCard,
                      color: kcGrey100Color,
                    ),
                    subtitle: BoxText.bodySub(
                      descriptionCard,
                      color: kcGrey300Color,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 10,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: iconTrailing,
                      iconSize: 20,
                      padding: const EdgeInsets.all(0),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: iconTrailingSecondary,
                      iconSize: 20,
                      padding: const EdgeInsets.all(0),
                    )
                  ],
                ),
              )
            ],
          ),
          color: kbgGreyTransparentColor,
          elevation: 0,
        ),
      ),
    );

    ;
  }
}



