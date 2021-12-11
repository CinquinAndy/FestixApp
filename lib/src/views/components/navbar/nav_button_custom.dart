import 'package:b3_festix/src/services/routing.dart';
import 'package:b3_festix/src/shared/shape_custom.dart';
import 'package:b3_festix/src/views/enum/enum_routesnames.dart';
import 'package:flutter/material.dart';

class CustomNavButton extends StatelessWidget {
  final Icon icon;
  final bool isSelectionned;
  final enum_routesnames toWhere;

  const CustomNavButton(
      {Key? key,
      required this.icon,
      this.isSelectionned = false,
      required this.toWhere})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelectionned
        ? Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: IconButton(
                  icon: icon,
                  onPressed: () {
                    switch (toWhere) {
                      case enum_routesnames.home:
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/home");
                        break;
                      case enum_routesnames.artists:
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/artists");
                        break;
                      case enum_routesnames.festivals:
                        Navigator.of(context).pop();
                        Navigator.of(context).pushNamed("/festivals");
                        break;
                    }
                  },
                ),
              ),
              Positioned(
                bottom: -15,
                // left: -11,
                child: //Add this CustomPaint widget to the Widget Tree
                    CustomPaint(
                  size: const Size(50, 25),
                  //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
              )
            ],
          )
        : Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: IconButton(
              icon: icon,
              onPressed: () {
                switch (toWhere) {
                  case enum_routesnames.home:
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/home");
                    break;
                  case enum_routesnames.artists:
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/artists");
                    break;
                  case enum_routesnames.festivals:
                    Navigator.of(context).pop();
                    Navigator.of(context).pushNamed("/festivals");
                    break;
                }
              },
            ),
          );
  }
}
