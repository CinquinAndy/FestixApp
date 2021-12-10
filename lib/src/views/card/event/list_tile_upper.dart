import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import '../../../../box_ui.dart';

class ListTileUpper extends StatelessWidget {
  final String mainTitle;
  final String titleCard;
  final String descriptionCard;
  final String urlBackground;
  final Icon iconTrailing;

  const ListTileUpper(
      {Key? key,
      required this.mainTitle,
      required this.titleCard,
      required this.descriptionCard,
      required this.urlBackground,
      required this.iconTrailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(urlBackground),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 100.0, 8.0, 8.0),
        child: Card(
          child: ClipRRect(
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
                trailing: iconTrailing,
              ),
            ),
          ),
          color: kbgGreyTransparentColor,
          // elevation: 10,
        ),
      ),
    );
  }
}
