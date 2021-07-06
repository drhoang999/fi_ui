import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class WeeklyProcessChart extends StatelessWidget {
  final double value;
  final double max;
  final bool isCurrent;

  const WeeklyProcessChart(
      {Key key, this.value, this.max, this.isCurrent = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 300,
            width: 300,
            child: Stack(
              children: [
                SfRadialGauge(axes: <RadialAxis>[
                  RadialAxis(
                      minimum: 0,
                      maximum: 100,
                      showLabels: false,
                      showTicks: false,
                      radiusFactor: 0.8,
                      ticksPosition: ElementsPosition.outside,
                      labelsPosition: ElementsPosition.outside,
                      startAngle: 150,
                      endAngle: 500,
                      useRangeColorForAxis: true,
                      axisLineStyle: AxisLineStyle(
                          cornerStyle: CornerStyle.bothCurve,
                          color: Colors.black12,
                          thickness: 25),
                      pointers: <GaugePointer>[
                        RangePointer(
                            value: 45,
                            cornerStyle: CornerStyle.bothCurve,
                            width: 25,
                            sizeUnit: GaugeSizeUnit.logicalPixel,
                            color: Color(0xffFFC542)),
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                            angle: 360,
                            axisValue: 5,
                            positionFactor: 0.2,
                            widget: Text('\$' + value.ceil().toString(),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: isCurrent
                                        ? Colors.white
                                        : Colors.grey))),
                      ]),
                ]),
                SfRadialGauge(axes: <RadialAxis>[
                  RadialAxis(
                      minimum: 0,
                      maximum: 80,
                      showLabels: false,
                      showTicks: false,
                      radiusFactor: 0.71,
                      ticksPosition: ElementsPosition.outside,
                      labelsPosition: ElementsPosition.outside,
                      startAngle: 200,
                      endAngle: 0,
                      useRangeColorForAxis: true,
                      axisLineStyle: AxisLineStyle(
                          cornerStyle: CornerStyle.bothCurve,
                          color: Color(0xffFF575F),
                          thickness: 10),
                      pointers: <GaugePointer>[],
                      annotations: <GaugeAnnotation>[]),
                ]),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Weekly process",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    width: 25,
                    height: 13,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffFFC542),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  Text(
                    "to start working",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: 25,
                    height: 13,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffFF575F),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),
                  Text(
                    "to start working",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}
