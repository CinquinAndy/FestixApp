import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/components/background_custom.dart';
import 'package:b3_festix/src/views/components/card/alternative_card_custom.dart';
import 'package:b3_festix/src/views/components/card/basic_card_custom.dart';
import 'package:b3_festix/src/views/components/navbar/navigation_bar_custom.dart';
import 'package:flutter/material.dart';

import '../../../box_ui.dart';

class Event extends StatelessWidget {
  final String title;

  const Event(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
      title: title,
      content: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BoxText.heading3("Events")
              ],
            ),
          ),
          const CustomNavBar(
            isHomeSelectionned: false,
            isFestivalsSelectionned: false,
            isArtistsSelectionned: true,
          )
        ],
      ),

    );
  }
}
