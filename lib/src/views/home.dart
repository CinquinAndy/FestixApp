import 'package:b3_festix/src/views/background_custom.dart';
import 'package:b3_festix/src/views/card_custom.dart';
import 'package:flutter/material.dart';

import '../../box_ui.dart';

class Home extends StatelessWidget {
  final String title;

  const Home(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
        CardCustom(),
        title
    );
  }
}
