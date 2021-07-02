import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'widget/candlesticks.dart';

class NodeRealTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List sampleData = [
      // {"open":50.0, "high":100.0, "low":40.0, "close":80, "volumeto":5000.0},
      // {"open":80.0, "high":90.0, "low":55.0, "close":65, "volumeto":4000.0},
      // {"open":65.0, "high":120.0, "low":60.0, "close":90, "volumeto":7000.0},
      // {"open":90.0, "high":95.0, "low":85.0, "close":80, "volumeto":2000.0},
      // {"open":80.0, "high":85.0, "low":40.0, "close":50, "volumeto":3000.0},

      {
        "open": 50.0,
        "high": 100.0,
        "low": 40.0,
        "close": 80,
        "volumeto": 5000.0
      },
      {
        "open": 80.0,
        "high": 90.0,
        "low": 55.0,
        "close": 65,
        "volumeto": 4000.0
      },
      {
        "open": 65.0,
        "high": 120.0,
        "low": 60.0,
        "close": 90,
        "volumeto": 7000.0
      },
      {
        "open": 90.0,
        "high": 95.0,
        "low": 85.0,
        "close": 80,
        "volumeto": 2000.0
      },
      {
        "open": 80.0,
        "high": 85.0,
        "low": 40.0,
        "close": 50,
        "volumeto": 3000.0
      },

      {
        "open": 50.0,
        "high": 100.0,
        "low": 40.0,
        "close": 80,
        "volumeto": 5000.0
      },
      {
        "open": 80.0,
        "high": 90.0,
        "low": 55.0,
        "close": 65,
        "volumeto": 4000.0
      },
      {
        "open": 65.0,
        "high": 120.0,
        "low": 60.0,
        "close": 90,
        "volumeto": 7000.0
      },
      {
        "open": 90.0,
        "high": 95.0,
        "low": 85.0,
        "close": 80,
        "volumeto": 2000.0
      },
      {
        "open": 80.0,
        "high": 85.0,
        "low": 40.0,
        "close": 50,
        "volumeto": 3000.0
      },
    ];

    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: ButtonBottomBack(
                onTap: () {
                  Get.back();
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Real-time Price",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Fi \$1",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_circle_down,
                  color: Color(0xff45B68D),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "+10.06%",
                  style: TextStyle(color: Color(0xff45B68D)),
                ),
              ],
            ),
            Container(
              height: 300.0,
              child: new OHLCVGraph(
                  data: sampleData,
                  enableGridLines: true,
                  showText: false,
                  volumeProp: 0.2),
            ),
            SizedBox(
              height: 20,
            ),
            buildGroupBy(),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: Get.width/2.3,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Color(0xff45B68D),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/svg/arrow_bottom.svg',
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text("Deposit", style: TextStyle(
                        color: Colors.white
                      ),),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: Get.width/2.3,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      color: Color(0xffE8503A),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/images/svg/arrow_top.svg',
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10,),
                      Text("Deposit", style: TextStyle(
                          color: Colors.white
                      ),),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildItemGroupBy(String text, bool selected) {
    return Container(
      padding: EdgeInsets.only(left: 10,right: 10, bottom: 5,top: 5),

      decoration: BoxDecoration(
        color: selected ? Color(0xff21204A) : null,
        borderRadius: BorderRadius.all(Radius.circular(7))
      ),
      child: Text(text ?? "", style: TextStyle(
        color: selected ? Colors.white : Colors.white.withOpacity(0.7),
        fontSize: 20
      ),),
    );
  }

  Widget buildGroupBy() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildItemGroupBy("24H", true),
        buildItemGroupBy("1W", false),
        buildItemGroupBy("1M", false),
        buildItemGroupBy("1Y", false),
        buildItemGroupBy("ALL", false),
      ],
    );
  }
}
