import 'package:fi_ui/components/navigator_bar.dart';
import 'package:fi_ui/const/color.dart';
import 'package:fi_ui/screen/home/widget/bar_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'widget/circle_chart.dart';
import 'widget/weekly_process_chart.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: IbePrimaryColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: //Main body
                Column(
              children: [
                Container(
                  height: Get.height * 0.5,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: Get.height * 0.25,
                        width: Get.width,
                        padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                        child: LineChart(
                          sampleData1(),
                          swapAnimationDuration:
                              const Duration(milliseconds: 250),
                        ),
                      ),
                      Container(
                        height: Get.height * 0.4,
                        width: Get.width,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "#",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "100,000",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 50,
                                      fontFamily: "Antonio",
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                      foreground: Paint()
                                        ..shader = LinearGradient(
                                          colors: <Color>[
                                            Color(0xff64D2FF),
                                            Color(0xff5E5CE6)
                                          ],
                                        ).createShader(Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 70.0))),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 100,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Receive",
                                    style: TextStyle(color: Color(0xff618EF1)),
                                  ),
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 15, right: 15),
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff618EF1)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                ),
                                Container(
                                  width: 100,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Send",
                                    style: TextStyle(color: Color(0xff618EF1)),
                                  ),
                                  padding: EdgeInsets.only(
                                      top: 10, bottom: 10, left: 15, right: 15),
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff618EF1)),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8))),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //Tip
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildButtonGroup("24h"),
                          buildButtonGroup("week"),
                          buildButtonGroup("be-week"),
                          buildButtonGroup("month"),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          width: Get.width * 0.9,
                          height: 86,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x9516122b),
                                blurRadius: 69,
                                offset: Offset(0, 51),
                              ),
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Color(0x59292655),
                                Color(0xc6292653),
                                Color(0x591a1842)
                              ],
                            ),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/png/illustrations.png',
                                height: 60,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 86,
                                        height: 17.83,
                                        child: Text(
                                          "You just earn ",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xff6867a5),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 8.11),
                                      SizedBox(
                                        width: 74.46,
                                        height: 17.83,
                                        child: Text(
                                          "0.02343,00",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xff50e2c1),
                                            fontSize: 14,
                                            fontFamily: "Helvetica Neue",
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 8.11),
                                      SizedBox(
                                        width: 40,
                                        height: 17,
                                        child: Text(
                                          "token",
                                          style: TextStyle(
                                            color: Color(0xff6867a5),
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "See history",
                                    style: TextStyle(color: Color(0xff70B2FF)),
                                  )
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                ),

                //MONEY SPENT
                buildTitle("MONEY SPENT"),

                Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: Get.width / 2,
                          width: Get.width / 2,
                          child: CircleChart(
                            value: 50,
                            colors: <Color>[
                              Color(0xFF5E5A5A),
                              Color(0xFFBEC7D7)
                            ],
                          ),
                        ),
                        Text(
                          "LAST WEEK",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: Get.width / 2,
                          width: Get.width / 2,
                          child: CircleChart(
                            value: 50,
                            isCurrent: true,
                            colors: <Color>[
                              Color(0xFF614AD3),
                              Color(0xFFE42C64)
                            ],
                          ),
                        ),
                        Text(
                          "CURRENT WEEK",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),

                //WALLETS
                buildTitle("WALLETS"),

                Container(
                  height: 80,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.all(8),
                          width: 190,
                          height: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0xff14b9e3), width: 0.3),
                            borderRadius: BorderRadius.circular(10),
                            gradient: index % 2 == 0
                                ? null
                                : LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xff3fdcff),
                                      Color(0xff14b9e3),
                                      Color(0xff13b1e6),
                                      Color(0xff11a9de),
                                      Color(0xff0a98c5)
                                    ],
                                  ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "W",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "1.9678",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "+12,5%",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 5),
                                child: Text(
                                  "Wallet ABC",
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ))),
                ),

                //WALLETS
                buildTitle("TREND"),
                BarChartHome(),

                WeeklyProcessChart(
                  value: 45,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          Container(
            height: Get.height,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: Get.height * 0.5,
                child: DraggableScrollableSheet(
                  initialChildSize: 0.25,
                  builder: (BuildContext context, controller) {
                    return SingleChildScrollView(
                      controller: controller,
                      child: Container(
                        height: Get.height * 0.5,
                        decoration: BoxDecoration(
                            color: Color(0xff10194E),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40))),
                        child: IntrinsicHeight(
                          child: Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.all(20),
                                  width: 64,
                                  height: 7,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    color: Color.fromRGBO(78, 88, 159, 1),
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    'Messages',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5),
                                  ),
                                  Text(
                                    'Transactions',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(181, 181, 181, 1),
                                        fontFamily: 'Helvetica',
                                        fontSize: 16,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: ListView.builder(
                                      itemBuilder: (context, index) =>
                                          Container(
                                            height: 80,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  index % 2 == 0
                                                      ? Color(0xff5E5CE6)
                                                          .withOpacity(0.1)
                                                      : Colors.transparent,
                                                  index % 2 == 0
                                                      ? Color(0xff64D2FF)
                                                          .withOpacity(0.1)
                                                      : Colors.transparent,
                                                ],
                                                begin: Alignment(0.5, 0.5),
                                                end: Alignment(0.5, 0.5),
                                              ),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  'assets/images/png/avatar.png',
                                                  height: 60,
                                                ),
                                                Expanded(
                                                    child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'People can explore some status and ...',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    132,
                                                                    142,
                                                                    196,
                                                                    1),
                                                            fontFamily:
                                                                'Helvetica',
                                                            fontSize: 14,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height:
                                                                1.7142857142857142),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("qNode XZY"),
                                                          Text("qNode XZY"),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ))
                                              ],
                                            ),
                                          )))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: NavigatorBar()),
        ],
      ),
    );
  }

  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        leftTitles: SideTitles(margin: 0),
        bottomTitles: SideTitles(
          showTitles: true,
          //  reservedSize: 22,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff72719b),
            fontSize: 12,
          ),
          // margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'Tue';
              case 2:
                return 'Wed';
              case 3:
                return 'Thu';
              case 4:
                return 'Fri';
              case 5:
                return 'Sat';
              case 6:
                return '';
            }
            return '';
          },
        ),
      ),
      borderData: FlBorderData(
        show: false,
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff4e4965),
            width: 4,
          ),
          left: BorderSide(
            color: Colors.transparent,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: 0,
      minY: 0,
      maxX: 6,
      maxY: 4,
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    final lineChartBarData1 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 1.5),
        FlSpot(4, 1.4),
        FlSpot(5, 3.4),
        FlSpot(6, 2),
      ],
      isCurved: true,
      colors: [
        const Color(0xffCB3DC4).withOpacity(0.4),
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    final lineChartBarData2 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(2, 2.8),
        FlSpot(3, 1.2),
        FlSpot(4, 2.8),
        FlSpot(5, 2.6),
        FlSpot(6, 3.9),
      ],
      isCurved: true,
      colors: [
        const Color(0xff50E3C2).withOpacity(0.4),
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(show: false, colors: [
        const Color(0x00aa4cfc),
      ]),
    );
    final lineChartBarData3 = LineChartBarData(
      spots: [
        FlSpot(1, 2.8),
        FlSpot(2, 1.9),
        FlSpot(3, 3),
        FlSpot(4, 1.3),
        FlSpot(5, 2.5),
        FlSpot(6, 2),
      ],
      isCurved: true,
      colors: [
        Color(0xff27b6fc).withOpacity(0.4),
      ],
      barWidth: 4,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return [
      lineChartBarData1,
      lineChartBarData2,
      lineChartBarData3,
    ];
  }

  Widget buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title ?? "",
          style: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }

  Widget buildButtonGroup(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4.8)),
        color: Color.fromRGBO(28, 25, 36, 1),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: 9.721475601196289, vertical: 2.4303689002990723),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            text ?? "",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Poppins',
                fontSize: 9.721475601196289,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.5),
          ),
        ],
      ),
    );
  }
}
