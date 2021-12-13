import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/components/card/festival/list_tile_double.dart';
import 'package:flutter/material.dart';

class FestivalAlternativeCardCustom extends StatelessWidget {
  final String mainTitle;

  const FestivalAlternativeCardCustom(
      {Key? key,
      required this.mainTitle})
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
                padding: EdgeInsets.fromLTRB(80.0,0,8,0),
                child: CustomListTileDouble(
                  mainTitle: "Tous les événements !",
                  titleCard: "Nom de l'événement",
                  descriptionCard: "06 juillet • de 16h à 2h",
                  urlBackground:
                  "https://images.unsplash.com/photo-1599467556385-48b57868f038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
                  iconTrailing: Icon(
                    Icons.info,
                    color: kcGrey50Color,
                  ),
                  iconTrailingSecondary: Icon(
                    Icons.event_note_rounded,
                    color: kcGrey50Color,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80.0,0,8.0,0),
                child: CustomListTileDouble(
                  mainTitle: "Tous les événements !",
                  titleCard: "Nom de l'événement",
                  descriptionCard: "06 juillet • de 16h à 2h",
                  urlBackground:
                  "https://images.unsplash.com/photo-1540039155733-5bb30b53aa14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
                  iconTrailing: Icon(
                    Icons.info,
                    color: kcGrey50Color,
                  ),
                  iconTrailingSecondary: Icon(
                    Icons.event_note_rounded,
                    color: kcGrey50Color,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80.0,0,8.0,0),
                child: CustomListTileDouble(
                  mainTitle: "Tous les événements !",
                  titleCard: "Nom de l'événement",
                  descriptionCard: "06 juillet • de 16h à 2h",
                  urlBackground:
                  "https://images.unsplash.com/photo-1540039155733-5bb30b53aa14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
                  iconTrailing: Icon(
                    Icons.info,
                    color: kcGrey50Color,
                  ),
                  iconTrailingSecondary: Icon(
                    Icons.event_note_rounded,
                    color: kcGrey50Color,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80.0,0,8.0,0),
                child: CustomListTileDouble(
                  mainTitle: "Tous les événements !",
                  titleCard: "Nom de l'événement",
                  descriptionCard: "06 juillet • de 16h à 2h",
                  urlBackground:
                  "https://images.unsplash.com/photo-1540039155733-5bb30b53aa14?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
                  iconTrailing: Icon(
                    Icons.info,
                    color: kcGrey50Color,
                  ),
                  iconTrailingSecondary: Icon(
                    Icons.event_note_rounded,
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
