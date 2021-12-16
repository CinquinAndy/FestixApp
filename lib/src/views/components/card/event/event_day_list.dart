import 'package:b3_festix/box_ui.dart';
import 'package:b3_festix/src/shared/app_colors.dart';
import 'package:b3_festix/src/shared/divider_custom.dart';
import 'package:flutter/material.dart';

class EventDayList extends StatelessWidget {
  final String date;
  final Map<String, String> listEvent;
  const EventDayList({Key? key, required this.date, required this.listEvent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Row(
            children: [
              BoxText.heading3_5(date, color: kcGrey50Color, textAlign: TextAlign.start,),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0,10,0,0),
            child: DividerCustom(height: 2, width: 400),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,0,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          const DividerCustom(height: 0.3, width: 50),

          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,0,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          const DividerCustom(height: 0.3, width: 50),

          // -------------------
          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,0,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          const DividerCustom(height: 0.3, width: 50),

          const SizedBox(height: 30),

          Row(
            children: [
              BoxText.heading3_5(date, color: kcGrey50Color, textAlign: TextAlign.start,),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0,10,0,0),
            child: DividerCustom(height: 2, width: 400),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,0,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          const DividerCustom(height: 0.3, width: 50),

          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,0,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          const DividerCustom(height: 0.3, width: 50),

          // -------------------
          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,0,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          const DividerCustom(height: 0.3, width: 50),

          const SizedBox(height: 30),

          Row(
            children: [
              BoxText.heading3_5(date, color: kcGrey50Color, textAlign: TextAlign.start,),
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0,10,0,0),
            child: DividerCustom(height: 2, width: 400),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,0,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          const DividerCustom(height: 0.3, width: 50),

          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,0,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          const DividerCustom(height: 0.3, width: 50),

          // -------------------
          Padding(
            padding: const EdgeInsets.fromLTRB(30,10,0,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,0,10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BoxText.body("19:00"),
                BoxText.body("Artist nom"),
                IconButton(
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
              ],
            ),
          ),
          const DividerCustom(height: 0.3, width: 50),
        ],
      ),
    );
  }
}
