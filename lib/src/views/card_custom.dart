import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  const CardCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 20.0, 0 , 20.0 ),
            child: BoxText.heading4("Evènement du moment !", color: kcGrey300Color,),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                leading: const SizedBox(
                    child: FlutterLogo(), height: double.infinity),
                title: BoxText.bodySub("Evenement en cours"),
                subtitle: BoxText.body("Nom de l'événement"),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  color: kcGrey50Color,
                ),
              ),
            ),
            color: kcGrey800Color,
          )
        ],
      ),
    );
  }
}
