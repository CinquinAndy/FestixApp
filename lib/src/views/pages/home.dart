import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/components/background_custom.dart';
import 'package:b3_festix/src/views/components/card/alternative_card_custom.dart';
import 'package:b3_festix/src/views/components/card/basic_card_custom.dart';
import 'package:b3_festix/src/views/components/navbar/navigation_bar_custom.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String title;
  final String backtitle;

  const Home(this.title, {Key? key, required this.backtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
      title: title,
      backtitle: backtitle,
      isHome: true,
      content: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                  height: 10,
                ),
                SizedBox(
                  // width: 100,
                  height: 240,
                  child: AlternativeCardCustom(
                    mainTitle: "Evènements recommandés !",
                    titleCard: "Nom de l'événement",
                    descriptionCard: "06 juillet • de 16h à 2h",
                    urlBackground:
                        "https://images.unsplash.com/photo-1599467556385-48b57868f038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
                    iconTrailing: Icon(
                      Icons.chevron_right_rounded,
                      color: kcGrey50Color,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
            isHomeSelectionned: true,
            isFestivalsSelectionned: false,
            isArtistsSelectionned: false,
          )
        ],
      ),
    );
  }
}
