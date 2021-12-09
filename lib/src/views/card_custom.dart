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
            padding: const EdgeInsets.fromLTRB(8.0, 20.0, 0, 20.0),
            child: BoxText.heading4(
              "Evènement du moment !",
              color: kcGrey300Color,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                  image: AssetImage("assets/images/cardTicket.png"),
                  fit:BoxFit.cover
              ),
            ),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 30, 8, 30),
                child: ListTile(
                  leading: Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')),
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    ),
                  ),
                  title: BoxText.bodySub("Evenement en cours"),
                  subtitle: BoxText.body("Nom de l'événement"),
                  trailing: const Icon(
                    Icons.chevron_right_rounded,
                    color: kcGrey50Color,
                  ),
                ),
              ),
              color: Colors.transparent,
              elevation: 0,
            ),
          ),
        ],
      ),
    );
  }
}
