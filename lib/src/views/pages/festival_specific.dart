import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/models/FestivalModel.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/shared/divider_custom.dart';
import 'package:b3_festix/src/utils/FormatDate.dart';
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
    var args = ModalRoute.of(context)!.settings.arguments as dynamic;
    args = args.first;

    return args == null
        ? Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: CircularProgressIndicator(
                    semanticsLabel: 'Linear progress indicator',
                  ),
                ),
              ],
            ),
          )
        : MainPersonnalizedScafold(
            title: title,
            backtitle: backtitle,
            isHome: true,
            isPhotoBackgroundActivated: true,
            urlPhoto: args.photoUrl,
            content: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 20),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                              child: BoxText.heading1(
                                args.title,
                                color: kcGrey200Color,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: BoxText.bodySub(
                                    DateFormat.dateFormatDay(args.dateStart),
                                    color: kcGrey200Color,
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context)
                                        .pushNamed("/events", arguments: {
                                      FestivalModel(
                                          args.id,
                                          args.title,
                                          args.description,
                                          args.photoUrl,
                                          args.dateStart,
                                          args.dateEnd)
                                    });
                                  },
                                  icon: const Icon(Icons.event_rounded),
                                  color: kcGrey100Color,
                                )
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
                              args.description,
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
