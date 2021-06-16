import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CircleFI extends StatelessWidget {
  @required
  final int length;
  final List<int> listNumber;

  const CircleFI({Key key, this.length, this.listNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(MediaQuery.of(context).size.height,
          MediaQuery.of(context).size.width),
      painter: CustomCircle(length, listNumber),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}

class CustomCircle extends CustomPainter {
  @required
  final int quantity;
  final List<int> listNumber;

  CustomCircle(this.quantity, this.listNumber);

  @override
  void paint(Canvas canvas, Size size) {
    double r = size.width * 0.5;
    Offset center = Offset(size.width / 2, size.height / 2);

    double widthStroke = r / 2;
    var paint = Paint()
      ..color = Colors.white
      ..strokeWidth = widthStroke
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round;

    paint.strokeWidth = 2;

    var rFloor = r.floor();
    var spaceCircle = (rFloor / 10).floor();
    var lengthCircle = 10;//(rFloor / spaceCircle).floor() - 2;

    var initLength = 2;

    for (int rFor = 0; rFor < rFloor; rFor++) {
      if (rFor % 20 != 0) continue;
      initLength += spaceCircle;

      continue;
    }

    var initR = 20;
    var initSpace = 20;
    for (int step = 0; step < lengthCircle; step++) {
      initR = initR + (lengthCircle - step)*3;
      if (step == 0) {
        initSpace = 20;
      } else if (step == 1) {
        initSpace = 15;
      }
      if (step == 3) {
        initSpace = 8;
      }
      initSpace = initSpace - 1;

      drawCircleDot(
          paint: paint,
          center: center,
          r: initR,
          canvas: canvas,
          space: initSpace);

      if(step == lengthCircle-1) {
        for(int j=3;j<=5;j++) {

          drawCircleDot(
              paint: paint,
              center: center,
              r: initR-j,
              canvas: canvas,
              space: j);

        }
      }


    }
  }

  void drawCircleDot(
      {Paint paint, Offset center, int r, Canvas canvas, int space}) {
    for (int i = -30; i < 90; i++) {
      if (space == 0 || i % space != 0) continue;

      paint.color = Color(0xff2C66B8);
      paint.strokeWidth = 10;
      paint.strokeCap = StrokeCap.square;
      var x1 = center.dx + (r - 9) * sin(i * 3 * pi / 180);
      var y1 = center.dy + (r - 9) * cos(i * 3 * pi / 180);
      canvas.drawCircle(Offset(x1, y1), 1.4, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
