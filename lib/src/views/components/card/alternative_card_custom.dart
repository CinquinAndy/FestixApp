import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

import 'festival/list_tile_upper.dart';

class AlternativeCardCustom extends StatelessWidget {
  final String mainTitle;
  final String titleCard;
  final String descriptionCard;
  final String urlBackground;
  final Icon iconTrailing;

  const AlternativeCardCustom(
      {Key? key,
      required this.mainTitle,
      required this.titleCard,
      required this.descriptionCard,
      required this.urlBackground,
      required this.iconTrailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 20, 0, 20),
          child: Row(
            children: [
              BoxText.heading4(
                mainTitle,
                color: kcGrey300Color,
              ),
              const Spacer(),
              BoxText.link(
                "voir tout",
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0,0,8,0),
                child: ListTileUpper(
                  mainTitle: mainTitle,
                  titleCard: titleCard,
                  descriptionCard: descriptionCard,
                  urlBackground: urlBackground,
                  iconTrailing: iconTrailing,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0,0,8.0,0),
                child: ListTileUpper(
                  mainTitle: mainTitle,
                  titleCard: titleCard,
                  descriptionCard: descriptionCard,
                  urlBackground: urlBackground,
                  iconTrailing: iconTrailing,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
