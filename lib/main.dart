import 'package:b3_festix/src/views/pages/artist_specific.dart';
import 'package:b3_festix/src/views/pages/artists.dart';
import 'package:b3_festix/src/views/pages/events.dart';
import 'package:b3_festix/src/views/pages/festival_specific.dart';
import 'package:b3_festix/src/views/pages/festivals.dart';
import 'package:b3_festix/src/views/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String title = "FESTIX";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Home(
        title,
        backtitle: "",
      ),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const Home(
              "FESTIX",
              backtitle: "",
            ),
        '/artists': (BuildContext context) => const Artist(
              "FESTIX",
              backtitle: "Artists",
            ),
        '/festivals': (BuildContext context) => const Festivals(
              "FESTIX",
              backtitle: "Festivals",
            ),
        '/festival': (BuildContext context) => const FestivalSpecific(
          "FESTIX",
          backtitle: "",
        ),
        '/artist': (BuildContext context) => const ArtistSpecific(
          "FESTIX",
          backtitle: "",
        ),
        '/events': (BuildContext context) => const Events(
          "FESTIX",
          backtitle: "",
        ),
      },
    );
  }
}
