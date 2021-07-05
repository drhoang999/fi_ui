import 'package:flutter/material.dart';

class ChartPainter extends CustomPainter{

  double leftStart,rightEnd;

  List<double> minMax = [0,0];
  List<ChartBean> chartBeans;
  Color lineColor;
  double lineWith;
  List<Color> fillColors;
  static const double padding = 0;
  int yAxisNum ;

  ChartPainter({this.leftStart = 0,this.rightEnd = 1, this.chartBeans, this.lineColor,
    this.lineWith, this.fillColors, this.yAxisNum});


  double startX, endX, startY, endY;
  double _fixedHeight, _fixedWidth;

  Path path;

  @override
  void paint(Canvas canvas, Size size) {
    _init(size);
    _drawLine(canvas, size);
  }


  void _drawLine(Canvas canvas, Size size) {
    if (chartBeans == null || chartBeans.length == 0) return;
    var paint = Paint()
      ..isAntiAlias = true
      ..strokeWidth = lineWith
      ..strokeCap = StrokeCap.round
      ..color = lineColor
      ..style = PaintingStyle.stroke;
    if (minMax[0] <= 0) return;
    var pathMetrics = path.computeMetrics(forceClosed: false);
    var list = pathMetrics.toList();

    var length = list.length.toInt() -
        (list.length.toInt() * leftStart) - (list.length.toInt() * (1-rightEnd));
    Path linePath = new Path();

    Path shadowPath = new Path();
    for (int i = 0; i < length; i++) {

      double startExtr = list[i].length * (leftStart );

      double endExtr = list[i].length * (rightEnd);
      var extractPath =
      list[i].extractPath(startExtr, endExtr , startWithMoveTo: true);
      //extractPath.getBounds()
      linePath.addPath(extractPath, Offset(0, 0));
      shadowPath = extractPath;
    }

    if (fillColors != null) {
      var shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
          colors: fillColors)
          .createShader(Rect.fromLTRB(startX, endY, startX, startY));

      shadowPath
        ..lineTo(startX + (_fixedWidth * rightEnd) , startY)
        ..lineTo((startX+ (endX * leftStart ) ), startY)
        ..close();

      canvas
        ..drawPath(
            shadowPath,
            new Paint()
              ..shader = shader
              ..isAntiAlias = true
              ..style = PaintingStyle.fill);
    }


    canvas.drawPath(linePath, paint);
  }

  void _init(Size size) {

    initBorder(size);
    initPath(size);
  }

  Map<double, Offset> _points = new Map();


  void initPath(Size size) {
    if (path == null) {
      if (chartBeans != null && chartBeans.length > 0 && minMax[0] > 0) {
        path = Path();
        double preX,
            preY,
            currentX,
            currentY;
        int length =  chartBeans.length;

        double W = _fixedWidth / (length - 1);

        for (int i = 0; i < length; i++) {
          if (i == 0) {
            var key = startX;

            var value = (startY - chartBeans[i].y / minMax[0] * _fixedHeight);

            path.moveTo(key, value);

            _points[key] = Offset(key, value);
            continue;
          }

          currentX = startX + W * i;

          preX = startX + W * (i - 1);

          preY = (startY - chartBeans[i - 1].y / minMax[0] * _fixedHeight);
          currentY = (startY - chartBeans[i].y / minMax[0] * _fixedHeight);
          _points[currentX] = Offset(currentX, currentY);


          path.cubicTo((preX + currentX) / 2, preY, // control point 1
              (preX + currentX) / 2, currentY,      //  control point 2
              currentX, currentY);

        }
      }
    }
  }

  ///计算边界
  void initBorder(Size size) {

    startX = yAxisNum > 0 ? padding * 2.5 : padding * 2;
    endX = size.width - padding * 2;
    startY = size.height - padding * 2;
    endY = padding * 2;

    _fixedHeight = startY - endY;
    _fixedWidth = endX - startX;

    minMax = calculateMaxMin(chartBeans);
  }

  @override
  bool shouldRepaint(ChartPainter oldDelegate) {
    return true;
  }


  List<double> calculateMaxMin(List<ChartBean> chatBeans) {
    if (chatBeans == null || chatBeans.length == 0) return [0, 0];
    double max = 0.0, min = 0.0;
    for (ChartBean bean in chatBeans) {
      if (max < bean.y) {
        max = bean.y;
      }
      if (min > bean.y) {
        min = bean.y;
      }
    }
    return [max, min];
  }

}

class ChartBean {
  String x; //x轴 值
  double y; //y轴 值


  ChartBean(
      {@required this.x, @required this.y,});
}
