import 'package:b3_festix/src/views/background_custom.dart';
import 'package:flutter/material.dart';

import '../../box_ui.dart';

class Home extends StatelessWidget {
  final String title;

  const Home(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          children: [BoxText.bodyDesc("Test texte !")],
        ),
        title
    );
  }
}
