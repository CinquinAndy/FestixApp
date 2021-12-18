import 'dart:ui';

import 'package:b3_festix/src/models/ArtistModel.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../box_ui.dart';

class CustomListTileSimple extends StatelessWidget {
  final String mainTitle;
  final String titleCard;
  final String descriptionCard;
  final String urlBackground;
  final Icon iconTrailing;
  final dynamic artist;

  const CustomListTileSimple(
      {Key? key,
      required this.mainTitle,
      required this.titleCard,
      required this.descriptionCard,
      required this.urlBackground,
      required this.iconTrailing,
      required this.artist})
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
                right: 20,
                bottom: 10,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/artist", arguments: {
                          ArtistModel(
                            artist['id'],
                            artist['artistName'],
                            artist['description'],
                            artist['musicStyle'],
                            artist['photoUrl'],
                          )
                        });
                      },
                      icon: iconTrailing,
                      iconSize: 20,
                      padding: const EdgeInsets.all(0),
                    ),
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
