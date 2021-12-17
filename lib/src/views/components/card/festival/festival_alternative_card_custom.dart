import 'dart:convert';

import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/constants/constants.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/views/components/card/festival/list_tile_double.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FestivalAlternativeCardCustom extends StatefulWidget {
  final String mainTitle;

  const FestivalAlternativeCardCustom({Key? key, required this.mainTitle})
      : super(key: key);

  @override
  _FestivalAlternativeCardCustomState createState() =>
      _FestivalAlternativeCardCustomState();
}

class _FestivalAlternativeCardCustomState extends State<FestivalAlternativeCardCustom> {
  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Map<String, dynamic> _loadedFestivals = {};

  Future<void> _fetchData() async {
    final response = await http.get(Uri.parse(API_URL + "/festival/list/"));
    final data = json.decode(utf8.decode(response.bodyBytes));

    setState(() {
      _loadedFestivals = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _loadedFestivals.isEmpty
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
              : ListView.builder(
                  itemCount: _loadedFestivals.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(80.0, 20, 8, 20),
                      child: CustomListTileDouble(
                        mainTitle: "",
                        titleCard: _loadedFestivals['data']['festivals'][index]['title'],
                        descriptionCard: _loadedFestivals['data']['festivals'][index]['dateStart'],
                        urlBackground: _loadedFestivals['data']['festivals'][index]['photoUrl'],
                        iconTrailing: const Icon(
                          Icons.info,
                          color: kcGrey50Color,
                        ),
                        festival: _loadedFestivals['data']['festivals'][index],
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
