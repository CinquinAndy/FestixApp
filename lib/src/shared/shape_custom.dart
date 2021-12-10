import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*0.4063000,size.height*0.1875000);
    path_0.arcToPoint(Offset(size.width*0.5937167,size.height*0.1875000),radius: Radius.elliptical(size.width*0.1500000, size.height*0.3750000),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(size.width*0.6661000,size.height*0.3322500);
    path_0.arcToPoint(Offset(size.width*0.5723833,size.height),radius: Radius.elliptical(size.width*0.1500000, size.height*0.3750000),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.lineTo(size.width*0.4276167,size.height);
    path_0.arcToPoint(Offset(size.width*0.3339167,size.height*0.3321667),radius: Radius.elliptical(size.width*0.1500000, size.height*0.3750000),rotation: 0 ,largeArc: false,clockwise: true);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = Color(0xff2b9fde).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}