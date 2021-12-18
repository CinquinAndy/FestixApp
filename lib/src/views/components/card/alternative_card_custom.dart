import 'dart:convert';

import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/constants/constants.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'festival/list_tile_upper.dart';

class AlternativeCardCustom extends StatefulWidget {
  const AlternativeCardCustom({Key? key}) : super(key: key);

  @override
  _AlternativeCardCustomState createState() => _AlternativeCardCustomState();
}

class _AlternativeCardCustomState extends State<AlternativeCardCustom> {
  @override
  void initState() {
    super.initState();
    _fetchDataFestival();
  }

  Map<String, dynamic> _loadedFestival = {};

  Future<void> _fetchDataFestival() async {
    final response =
        await http.get(Uri.parse(API_URL + "/festival/list/limit/5/"));
    final data = json.decode(utf8.decode(response.bodyBytes));
    setState(() {
      _loadedFestival = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _loadedFestival.isEmpty
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
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
                child: Row(
                  children: [
                    BoxText.heading4(
                      "Festivals recommandés !",
                      color: kcGrey300Color,
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/festivals");
                      },
                      child: BoxText.link(
                        "voir tout",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: _loadedFestival.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext ctx, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
                        child: ListTileUpper(
                          mainTitle: "",
                          titleCard: _loadedFestival['data']['festivals'][index]
                              ['title'],
                          descriptionCard: _loadedFestival['data']['festivals']
                              [index]['dateStart'],
                          urlBackground: _loadedFestival['data']['festivals'][index]
                              ['photoUrl'],
                          iconTrailing: const Icon(
                            Icons.chevron_right_rounded,
                            color: kcGrey50Color,
                          ),
                          festival:_loadedFestival['data']['festivals'][index],
                        ),
                      );
                    }),
              ),
            ],
          );
  }
}
