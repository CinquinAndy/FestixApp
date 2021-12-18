import 'dart:convert';

import 'package:b3_festix/src/constants/constants.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/components/background_custom.dart';
import 'package:b3_festix/src/views/components/card/alternative_card_custom.dart';
import 'package:b3_festix/src/views/components/card/basic_card_custom.dart';
import 'package:b3_festix/src/views/components/navbar/navigation_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  final String title;
  final String backtitle;

  const Home(this.title, {Key? key, required this.backtitle}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _fetchDataArtist();
    _fetchDataFestival();
  }

  Map<String, dynamic> _loadedFestival = {};
  Map<String, dynamic> _loadedArtist = {};
  Map<String, dynamic> _loadedEvents = {};

  Future<void> _fetchDataArtist() async {
    final response = await http.get(Uri.parse(API_URL + "/festival/last/"));
    final data = json.decode(utf8.decode(response.bodyBytes));
    setState(() {
      _loadedFestival = data;
    });
  }

  Future<void> _fetchDataFestival() async {
    final response = await http.get(Uri.parse(API_URL + "/artist/random/"));
    final data = json.decode(utf8.decode(response.bodyBytes));
    setState(() {
      _loadedArtist = data;
      _fetchDataEvents();
    });
  }

  Future<void> _fetchDataEvents() async {
    final response = await http.get(Uri.parse(API_URL + "/festival/list/"));
    final data = json.decode(utf8.decode(response.bodyBytes));
    setState(() {
      _loadedEvents = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainPersonnalizedScafold(
      title: widget.title,
      backtitle: widget.backtitle,
      isHome: true,
      isPhotoBackgroundActivated: false,
      urlPhoto: "",
      content: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  child: _loadedFestival.isEmpty
                      ? Column(
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
                        )
                      : BasicCardCustom(
                          mainTitle: "Évènement du moment !",
                          pathBackground: "assets/images/cardTicket.png",
                          urlPhoto: _loadedFestival['data']['festivals']
                              ['photoUrl'],
                          descriptionCard: _loadedFestival['data']['festivals']
                              ['dateStart'],
                          titleCard: _loadedFestival['data']['festivals']
                              ['title'],
                          iconTrailing: const Icon(
                            Icons.chevron_right_rounded,
                            color: kcGrey50Color,
                          ),
                          elem: _loadedFestival['data']['festivals'],
                          mode: 'festival',
                        ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  // width: 100,
                  height: 240,
                  child: AlternativeCardCustom(
                    mainTitle: "Evènements recommandés !",
                    titleCard: "Nom de l'événement",
                    descriptionCard: "06 juillet • de 16h à 2h",
                    urlBackground:
                        "https://images.unsplash.com/photo-1599467556385-48b57868f038?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80",
                    iconTrailing: Icon(
                      Icons.chevron_right_rounded,
                      color: kcGrey50Color,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: _loadedArtist.isEmpty
                      ? Column(
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
                        )
                      : BasicCardCustom(
                          mainTitle: "Artiste à ne pas loupé !",
                          pathBackground: "assets/images/cardArtist.png",
                          urlPhoto: _loadedArtist['data']['artists']['photoUrl'],
                          descriptionCard: _loadedArtist['data']['artists']
                              ['musicStyle'],
                          titleCard: _loadedArtist['data']['artists']
                              ['artistName'],
                          iconTrailing: const Icon(
                            Icons.info,
                            color: kcGrey50Color,
                          ),
                          isNotCirclePhoto: false,
                          mode: 'artist',
                          elem: _loadedArtist['data']['artists'],
                        ),
                ),
              ],
            ),
          ),
          const CustomNavBar(
            isHomeSelectionned: true,
            isFestivalsSelectionned: false,
            isArtistsSelectionned: false,
            isSideTitleEnabled: false,
          )
        ],
      ),
    );
  }
}
