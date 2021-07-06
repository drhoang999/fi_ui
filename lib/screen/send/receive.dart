import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fi_ui/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ReceiveScreen extends StatelessWidget {
  PageController pageController = new PageController(initialPage: 0);
  int countPage = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: IbePrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "RECEIVE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/images/svg/bitcoin.svg',
                width: 32,
                height: 32,
                color: Colors.white,
              ),
            ),
            CarouselSlider(

              options: CarouselOptions(
                  onPageChanged: (page, cr) {
                    pageController.animateToPage(page,
                        duration: Duration(milliseconds: 1),
                        curve: Curves.easeOut);
                  },
                  enlargeCenterPage: true,
                  height: 450.0),
              items: List.generate(countPage, (index) => index).map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                       Expanded(child:
                       SingleChildScrollView(
                         child: Column(children: [
                           Stack(
                             children: [
                               Container(
                                 decoration: BoxDecoration(
                                   borderRadius:
                                   BorderRadius.all(Radius.circular(15)),
                                 ),
                               ),
                               Stack(
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
                                       padding: EdgeInsets.all(20),
                                       width: MediaQuery.of(context).size.width,
                                       margin:
                                       EdgeInsets.symmetric(horizontal: 5.0),
                                       decoration: BoxDecoration(
                                           color: Colors.white.withOpacity(0.5),
                                           gradient: LinearGradient(
                                             begin: Alignment.topCenter,
                                             end: Alignment.bottomCenter,
                                             colors: [
                                               Color(0xffE3507A),
                                               Color(0xffFFFFFF)
                                             ],
                                           ),
                                           borderRadius: BorderRadius.all(
                                               Radius.circular(15))),
                                       child: Column(
                                         children: [
                                           Container(
                                             height: 170,
                                             width: double.infinity,
                                             padding: EdgeInsets.all(7),
                                             decoration: BoxDecoration(
                                                 color: Colors.white,
                                                 borderRadius:
                                                 BorderRadius.circular(15)),
                                             child: Center(
                                               child: QrImage(
                                                 data: "1234567890",
                                                 version: QrVersions.auto,
                                               ),
                                             ),
                                           ),
                                           Container(
                                             height: 10,
                                           ),
                                           buildItemOption(
                                               icon: Icons.send_outlined,
                                               text: "Share link"),
                                           Divider(
                                             color: Colors.white,
                                             height: 20,
                                           ),
                                           buildItemOption(
                                               icon: Icons.copy,
                                               text: "Copy QR code"),
                                           Divider(
                                             color: Colors.white,
                                             height: 20,
                                           ),
                                           buildItemOption(
                                               icon: Icons.copy,
                                               text: "Download QR Code"),
                                         ],
                                       )),
                                   Container(
                                     height: 3,
                                     color: Colors.green,
                                     width: Get.width * 0.5,
                                   ),
                                 ],
                               ),
                             ],
                           ),
                           SizedBox(
                             height: 20,
                           ),
                         ],),
                       )),
                       Column(
                         children: [
                           Align(
                             alignment: Alignment.centerLeft,
                             child: Text(
                               "Wallet ABC",
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 19,
                                 fontFamily: "Abhaya Libre",
                                 fontWeight: FontWeight.w700,
                               ),
                             ),
                           ),
                           Text(
                             "Balacne: ****",
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               color: Color(0xff96a7af),
                               fontSize: 16,
                             ),
                           ),
                         ],
                       )
                      ],
                    );
                  },
                );
              }).toList(),
            ),
            Container(
                height: 1,
                child: PageView.builder(
                  controller: pageController,
                  itemBuilder: (context, index) => Container(
                    height: 1,
                    width: 1,
                  ),
                  itemCount: countPage,
                )),
            SmoothPageIndicator(
              controller: pageController,
              count: countPage,
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                spacing: 15,
                dotColor: Color(0xff475E69),
                activeDotColor: Color(0xff3DD598),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonBottomBack(
                  onTap: () {
                    Get.back();
                  },
                ),
                Container(
                  width: 247,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfff4f4f4),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  "How does this work?",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
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

  Widget buildItemOption({IconData icon, String text}) {
    return Row(
      children: [
        Icon(
          icon ?? Icons.keyboard,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text ?? "",
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
