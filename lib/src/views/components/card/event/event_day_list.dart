import 'dart:convert';

import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/constants/constants.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/shared/divider_custom.dart';
import 'package:b3_festix/src/utils/FormatDate.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EventDayList extends StatefulWidget {
  const EventDayList({Key? key}) : super(key: key);

  @override
  _EventDayListState createState() => _EventDayListState();
}

class _EventDayListState extends State<EventDayList> {
  @override
  void initState() {
    super.initState();
    flag = false;
    args = '';
  }

  bool flag = false;
  dynamic args = '';
  Map<String, dynamic> _loadedEvents = {};

  Future<void> _fetchData(args) async {
    final response = await http.get(Uri.parse(API_URL + "/event/list/byfestival/${args.first.id}"));
    final data = json.decode(utf8.decode(response.bodyBytes));
    setState(() {
      _loadedEvents = data;
    });
  }

  Padding buildContent() {
    List<Widget> rows = [];
    Widget row = const Padding(padding: EdgeInsets.all(0));
    for (var i = 0; i < _loadedEvents['data']['events'].length; i++) {
      rows.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BoxText.body(DateFormat.dateFormatHourMinutes(DateTime.parse(_loadedEvents['data']['events'][i]['dateTime']))),
            Row(
              children: [
                // _loadedEvents['data']['events'][i]['artistEnAvant']
                SizedBox(
                  width: 170,
                    child: BoxText.body(_loadedEvents['data']['events'][i]['artistEnAvant'])),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pushNamed("/artist");
                    },
                    icon: const Icon(
                      Icons.info,
                      color: kcGrey50Color,
                    ),
                    iconSize: 20,
                    padding: const EdgeInsets.all(0),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    row = Container(
      child: Column(
        children: rows,
      ),
    );

    return Padding(
        padding: const EdgeInsets.fromLTRB(30, 10, 0, 0), child: row);
  }

  @override
  Widget build(BuildContext context) {
    if (flag != true) {
      args = ModalRoute.of(context)!.settings.arguments as dynamic;
      flag = true;
      if (args != null) {
        _fetchData(args);
      }
    }

    return Container(
      child: _loadedEvents.isEmpty
          ? Expanded(
              child: Column(
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
              ),
            )
          : Expanded(
        child:
        Padding(
          padding: const EdgeInsets.fromLTRB(0,20,0,0),
          child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext ctx, index) {
              return Column(children: [
                Row(
                  children: [
                    BoxText.heading3_5(
                      DateFormat.dateFormatDay(args.first.dateStart),
                      color: kcGrey50Color,
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: DividerCustom(height: 2, width: 400),
                ),
                buildContent()
              ]);
            },
          ),
        ),
      )
    );
  }
}
