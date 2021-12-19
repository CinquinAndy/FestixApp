import 'package:b3_festix/src/views/components/background_custom.dart';
import 'package:b3_festix/src/views/components/card/event/event_day_list.dart';
import 'package:b3_festix/src/views/components/navbar/navigation_bar_custom.dart';
import 'package:flutter/material.dart';

import '../../../box_ui.dart';

class Events extends StatelessWidget {
  final String title;
  final String backtitle;

  const Events(this.title,{Key? key, required this.backtitle})
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
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          EventDayList(),
          CustomNavBar(
            isHomeSelectionned: false,
            isFestivalsSelectionned: false,
            isArtistsSelectionned: false,
            isSideTitleEnabled: false,
          )
        ],
      ),
    );
  }
}
