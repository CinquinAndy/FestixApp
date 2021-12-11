import 'package:b3_festix/src/views/components/background_custom.dart';
import 'package:b3_festix/src/views/components/navbar/navigation_bar_custom.dart';
import 'package:flutter/material.dart';

import '../../../box_ui.dart';

class Festivals extends StatelessWidget {
  final String title;
  final String backtitle;

  const Festivals(this.title, {Key? key, required this.backtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
      title: title,
      isHome: false,
      backtitle: backtitle,
      content: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BoxText.heading3("Festivals")
              ],
            ),
          ),
          const CustomNavBar(
            isHomeSelectionned: false,
            isFestivalsSelectionned: true,
            isArtistsSelectionned: false,
          )
        ],
      ),

    );
  }
}
