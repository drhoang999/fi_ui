import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class CircleChart extends StatelessWidget {
  final double value;
  final List<Color> colors;
  final double max;
  final bool isCurrent;

  const CircleChart(
      {Key key, this.value, this.colors, this.max, this.isCurrent = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SfRadialGauge(

        axes: <RadialAxis>[
      RadialAxis(
        ranges: [
          GaugeRange(startValue: 0
              ,endValue: 360,
              color: Colors.grey.withOpacity(0.2),
              startWidth: 8,
              endWidth:8),
        ],
          minimum: 0,
          maximum: 100,
          showLabels: false,
          showTicks: false,
          radiusFactor: 0.8,
          ticksPosition: ElementsPosition.outside,
          labelsPosition: ElementsPosition.outside,
          startAngle: -90,
          endAngle: 270,
          useRangeColorForAxis: true,
          axisLineStyle: AxisLineStyle(
              cornerStyle: CornerStyle.bothCurve,
              color: Colors.transparent,
              thickness: 25),
          pointers: <GaugePointer>[
            RangePointer(
                value: 50,
                cornerStyle: CornerStyle.endCurve,
                width: 8,
                sizeUnit: GaugeSizeUnit.logicalPixel,
                color: Colors.white,
                gradient:
                    SweepGradient(colors: colors,
                        stops: <double>[0.25, 0.75])),
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                angle: 180,
                axisValue: 5,
                positionFactor: 0.2,
                widget: Text('\$' + value.ceil().toString(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isCurrent ? Colors.white : Colors.grey))),
          ])
    ]);
  }
}
