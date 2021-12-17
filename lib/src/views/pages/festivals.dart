import 'package:b3_festix/src/models/FestivalModel.dart';
import 'package:b3_festix/src/services/CallAPI.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/components/background_custom.dart';
import 'package:b3_festix/src/views/components/card/festival/festival_alternative_card_custom.dart';
import 'package:b3_festix/src/views/components/card/festival/list_tile_double.dart';
import 'package:b3_festix/src/views/components/navbar/navigation_bar_custom.dart';
import 'package:flutter/material.dart';

import '../../../box_ui.dart';

class Festivals extends StatefulWidget {
  final String title;
  final String backtitle;

  const Festivals(this.title, {Key? key, required this.backtitle}) : super(key: key);

  @override
  _FestivalsState createState() => _FestivalsState();
}

class _FestivalsState extends State<Festivals> {
  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
      title: widget.title,
      backtitle: widget.backtitle,
      isHome: false,
      isPhotoBackgroundActivated: false,
      urlPhoto: "",
      content: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Expanded(
                  // width: 100,
                  child: FestivalAlternativeCardCustom(
                    mainTitle: "Tous les événements !",
                  ),
                ),
              ],
            ),
          ),
          const CustomNavBar(
            isHomeSelectionned: false,
            isFestivalsSelectionned: true,
            isArtistsSelectionned: false,
            isSideTitleEnabled: true,
          )
        ],
      ),
    );

  }


}