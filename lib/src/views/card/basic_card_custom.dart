import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';

class BasicCardCustom extends StatelessWidget {
  final String mainTitle;
  final String titleCard;
  final String descriptionCard;
  final String urlPhoto;
  final String pathBackground;
  final Icon iconTrailing;
  final bool isNotCirclePhoto;

  const BasicCardCustom(
      {Key? key,
      required this.mainTitle,
      required this.titleCard,
      required this.descriptionCard,
      required this.urlPhoto,
      required this.pathBackground,
      required this.iconTrailing,
      this.isNotCirclePhoto = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 20.0, 0, 20.0),
          child: BoxText.heading4(
            mainTitle,
            color: kcGrey300Color,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(pathBackground), fit: BoxFit.cover),
          ),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 30, 8, 30),
              child: ListTile(
                // ************ Si la la photo est set en circle ou pas **************
                leading: isNotCirclePhoto
                    ? Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(urlPhoto),
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16.0)),
                        ),
                      )
                    : SizedBox(
                        width: 80,
                        height: 80,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(urlPhoto),
                        ),
                      ),
                title: BoxText.bodySub(descriptionCard),
                subtitle: BoxText.body(titleCard),
                trailing: iconTrailing,
              ),
            ),
            color: Colors.transparent,
            elevation: 0,
          ),
        ),
      ],
    );
  }
}
