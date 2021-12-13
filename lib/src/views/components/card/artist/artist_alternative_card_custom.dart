import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/components/card/artist/list_tile_simple.dart';
import 'package:b3_festix/src/views/components/card/festival/list_tile_double.dart';
import 'package:flutter/material.dart';

class ArtistAlternativeCardCustom extends StatelessWidget {
  final String mainTitle;

  const ArtistAlternativeCardCustom({Key? key, required this.mainTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: const [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80.0, 0, 8, 0),
                child: CustomListTileSimple(
                  mainTitle: "Tous les artistes !",
                  titleCard: "Nom de l'artiste",
                  descriptionCard: "style de musique",
                  urlBackground:
                      "https://images.unsplash.com/photo-1599467556385-48b57868f038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
                  iconTrailing: Icon(
                    Icons.info,
                    color: kcGrey50Color,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80.0, 0, 8, 0),
                child: CustomListTileSimple(
                  mainTitle: "Tous les artistes !",
                  titleCard: "Nom de l'artiste",
                  descriptionCard: "style de musique",
                  urlBackground:
                      "https://images.unsplash.com/photo-1599467556385-48b57868f038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
                  iconTrailing: Icon(
                    Icons.info,
                    color: kcGrey50Color,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80.0, 0, 8, 0),
                child: CustomListTileSimple(
                  mainTitle: "Tous les artistes !",
                  titleCard: "Nom de l'artiste",
                  descriptionCard: "style de musique",
                  urlBackground:
                      "https://images.unsplash.com/photo-1599467556385-48b57868f038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
                  iconTrailing: Icon(
                    Icons.info,
                    color: kcGrey50Color,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80.0, 0, 8, 0),
                child: CustomListTileSimple(
                  mainTitle: "Tous les artistes !",
                  titleCard: "Nom de l'artiste",
                  descriptionCard: "style de musique",
                  urlBackground:
                      "https://images.unsplash.com/photo-1599467556385-48b57868f038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
                  iconTrailing: Icon(
                    Icons.info,
                    color: kcGrey50Color,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
