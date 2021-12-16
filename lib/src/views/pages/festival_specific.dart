import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/shared/divider_custom.dart';
import 'package:b3_festix/src/views/components/background_custom.dart';
import 'package:b3_festix/src/views/components/navbar/navigation_bar_custom.dart';
import 'package:flutter/material.dart';

class FestivalSpecific extends StatelessWidget {
  final String title;
  final String backtitle;

  const FestivalSpecific(this.title, {Key? key, required this.backtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
      title: title,
      backtitle: backtitle,
      isHome: true,
      isPhotoBackgroundActivated: true,
      urlPhoto:
          "https://images.unsplash.com/photo-1599467556385-48b57868f038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
      content: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 60, 0),
                        child: BoxText.heading1(
                          "Nom de l'événement",
                          color: kcGrey200Color,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: BoxText.bodySub(
                              "06 juillet - de 16h à 2h",
                              color: kcGrey200Color,
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(10, 30.0, 10, 30),
                        child: DividerCustom(
                          height: 2,
                          width: 600,
                        ),
                      ),
                      BoxText.body(
                        "Candy canes danish bear claw chocolate bar tootsie "
                        "roll sesame snaps sesame snaps brownie. "
                        "Fruitcake chocolate bar donut halvah dessert. "
                        "Cake gingerbread halvah biscuit icing. Lemon drops cookie pie powder pastry "
                        "sesame snaps fruitcake candy. Gummies gummies bonbon lollipop cotton candy wafer "
                        "soufflé chocolate cake. Brownie pastry fruitcake donut sweet roll halvah dragée "
                        "macaroon. Lollipop tart cookie tootsie roll chocolate bar dessert cake. Tart toffee "
                        "jujubes cotton candy marshmallow donut liquorice macaroon. Chocolate bar chocolate cake "
                        "topping ice cream candy biscuit marzipan. Gummies chocolate jelly-o cookie toffee jujubes "
                        "gingerbread croissant marshmallow. Gingerbread gummies tootsie roll sesame snaps cotton candy t"
                        "art liquorice brownie. Toffee dessert chocolate cake sweet jelly-o chupa chups sesame snaps.",
                        color: kcGrey300Color,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const CustomNavBar(
            isHomeSelectionned: false,
            isFestivalsSelectionned: false,
            isArtistsSelectionned: false,
            isSideTitleEnabled: true,
          )
        ],
      ),
    );
  }
}
