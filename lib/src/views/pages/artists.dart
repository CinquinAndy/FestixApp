import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/components/background_custom.dart';
import 'package:b3_festix/src/views/components/card/alternative_card_custom.dart';
import 'package:b3_festix/src/views/components/card/artist/artist_alternative_card_custom.dart';
import 'package:b3_festix/src/views/components/card/basic_card_custom.dart';
import 'package:b3_festix/src/views/components/navbar/navigation_bar_custom.dart';
import 'package:flutter/material.dart';

class Artist extends StatelessWidget {
  final String title;
  final String backtitle;

  const Artist(this.title, {Key? key, required this.backtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
      title: title,
      backtitle: backtitle,
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
                  child: ArtistAlternativeCardCustom(
                    mainTitle: "Tous les événements !",
                  ),
                ),
              ],
            ),
          ),
          const CustomNavBar(
            isHomeSelectionned: false,
            isFestivalsSelectionned: false,
            isArtistsSelectionned: true,
            isSideTitleEnabled: true,
          )
        ],
      ),
    );

  }
}
