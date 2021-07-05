import 'package:flutter/material.dart';
import 'chart_painter.dart';

class PaintChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = Size(MediaQuery.of(context).size.width, 200);
    return Stack(
      children: [
        CustomPaint(
          size: size,
          painter: buildPainter(),
        ),
        CustomPaint(
          size: size,
          painter: buildPainter2(),
        ),
      ],
    );
  }

  ChartPainter buildPainter2() {
    var dataList = [
      ChartBean(x: "\$2000", y: 20),
      ChartBean(x: "\$1100", y: 10),
      ChartBean(x: "\$1400", y: 32),
      ChartBean(x: "\$500", y: 18),
      ChartBean(x: "\$800", y: 25),
      ChartBean(x: "\$1800", y: 50),
      ChartBean(x: "\$1200", y: 32),
      ChartBean(x: "\$2000", y: 48),
      ChartBean(x: "\$1100", y: 20),
      ChartBean(x: "\$1400", y: 24),
    ];

    return ChartPainter(
        chartBeans: dataList,
        lineColor: Colors.transparent,
        fillColors: [Color(0xff50E3C2), Color(0xff50E3C2).withOpacity(0.1)],
        lineWith: 3,
        yAxisNum: dataList.length);
  }

  ChartPainter buildPainter() {
    var dataList = [
      ChartBean(x: "\$2000", y: 32),
      ChartBean(x: "\$1100", y: 48),
      ChartBean(x: "\$1400", y: 32),
      ChartBean(x: "\$500", y: 24),
      ChartBean(x: "\$800", y: 50),
      ChartBean(x: "\$1800", y: 25),
      ChartBean(x: "\$1200", y: 18),
      ChartBean(x: "\$2000", y: 32),
      ChartBean(x: "\$1100", y: 48),
      ChartBean(x: "\$1400", y: 32),
    ];

    return ChartPainter(
        chartBeans: dataList,
        lineColor: Colors.transparent,
        fillColors: [Color(0xffE3507A), Color(0xffE3507A).withOpacity(0.1)],
        lineWith: 3,
        yAxisNum: dataList.length);
  }
}
