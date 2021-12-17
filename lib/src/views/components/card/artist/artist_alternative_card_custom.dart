import 'dart:convert';

import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/constants/constants.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/components/card/artist/list_tile_simple.dart';
import 'package:b3_festix/src/views/components/card/festival/list_tile_double.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ArtistAlternativeCardCustom extends StatefulWidget {
  final String mainTitle;

  const ArtistAlternativeCardCustom({Key? key, required this.mainTitle})
      : super(key: key);

  @override
  _ArtistAlternativeCardCustomState createState() =>
      _ArtistAlternativeCardCustomState();
}

class _ArtistAlternativeCardCustomState
    extends State<ArtistAlternativeCardCustom> {
  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Map<String, dynamic> _loadedArtists = {};

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse(API_URL + "/artist/list/"));
    final data = json.decode(utf8.decode(response.bodyBytes));

    setState(() {
      _loadedArtists = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _loadedArtists.isEmpty
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
              :
          ListView.builder(
            itemCount: _loadedArtists.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext ctx, index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(80.0, 20, 8, 20),
                child: CustomListTileSimple(
                  mainTitle: "",
                  titleCard: _loadedArtists['data']['artists'][index]['artistName'],
                  descriptionCard: _loadedArtists['data']['artists'][index]['musicStyle'],
                  urlBackground: _loadedArtists['data']['artists'][index]['photoUrl'],
                  iconTrailing: const Icon(
                    Icons.info,
                    color: kcGrey50Color,
                  ),
                  artist: _loadedArtists['data']['artists'][index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
