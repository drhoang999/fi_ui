import 'package:flutter/material.dart';

class BarChartC extends StatelessWidget {
  final double width;
  final double height;
  final double max;

  const BarChartC({Key key, this.width, this.height, this.max}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = [
      DataBarChart(
        day: "17",
        dayOfWeek: "Mon",
        up: 10,
        down: 20,
      ),
      DataBarChart(
        day: "18",
        dayOfWeek: "Tue",
        up: 10,
        down: 50,
      ),
      DataBarChart(
        day: "19",
        dayOfWeek: "Wed",
        up: 10,
        down: 40,
      ),
      DataBarChart(
        day: "20",
        dayOfWeek: "Thu",
        up: 10,
        down: 60,
      ),
      DataBarChart(
        day: "21",
        dayOfWeek: "Fri",
        up: 10,
        down: 30,
      ),
      DataBarChart(
        day: "22",
        dayOfWeek: "Sat",
        up: 10,
        down: 60,
      ),
      DataBarChart(
        day: "23",
        dayOfWeek: "Sun",
        up: 10,
        down: 50,
      ),
    ];

    return Container(
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: data
            .map((e) => Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff2A3C44),
                        ),
                        width: 15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xffFF575F),
                              ),
                              width: 15,
                              height: e.up*(height/100),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Color(0xff3DD598),
                              ),
                              width: 15,
                              height: e.down*(height/100),
                            ),
                          ],
                        ),
                      ),
                    )),
                    Text(
                      e.day,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      e.dayOfWeek,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }
}

class DataBarChart {
  double up;
  double down;
  String day;
  String dayOfWeek;

  DataBarChart({this.up, this.down, this.day, this.dayOfWeek});
}
