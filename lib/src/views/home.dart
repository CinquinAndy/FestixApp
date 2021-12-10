import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/shared/shape_custom.dart';
import 'package:b3_festix/src/views/background_custom.dart';
import 'package:b3_festix/src/views/card/alternative_card_custom.dart';
import 'package:b3_festix/src/views/card/basic_card_custom.dart';
import 'package:b3_festix/src/views/navbar/navigation_bar_custom.dart';
import 'package:flutter/material.dart';

import '../../box_ui.dart';

class Home extends StatelessWidget {
  final String title;

  const Home(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
      title: title,
      content: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  height: 200,
                  child: BasicCardCustom(
                    mainTitle: "Evènement du moment !",
                    pathBackground: "assets/images/cardTicket.png",
                    urlPhoto:
                        "https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    descriptionCard: "Evènement en cours",
                    titleCard: "Nom de l'événement",
                    iconTrailing: Icon(
                      Icons.chevron_right_rounded,
                      color: kcGrey50Color,
                    ),
                  ),
                ),
                SizedBox(
                  // width: 100,
                  height: 240,
                  child: AlternativeCardCustom(
                    mainTitle: "Evènements recommandés !",
                    titleCard: "Nom de l'événement",
                    descriptionCard: "06 juillet • de 16h à 2h",
                    urlBackground:
                        "https://images.unsplash.com/photo-1540039155733-5bb30b53aa14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
                    iconTrailing: Icon(
                      Icons.chevron_right_rounded,
                      color: kcGrey50Color,
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: BasicCardCustom(
                    mainTitle: "Artiste à ne pas loupé !",
                    pathBackground: "assets/images/cardArtist.png",
                    urlPhoto:
                        "https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                    descriptionCard: "Artiste à la une !",
                    titleCard: "Nom de l'artiste",
                    iconTrailing: Icon(
                      Icons.info,
                      color: kcGrey50Color,
                    ),
                    isNotCirclePhoto: false,
                  ),
                ),
              ],
            ),
          ),
          const CustomNavBar(
            isHomeSelectionned: false,
            isEventsSelectionned: false,
            isFestivalSelectionned: true,
          )
        ],
      ),
    );
  }
}
