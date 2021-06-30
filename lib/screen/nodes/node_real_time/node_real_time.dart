import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widget/candlesticks.dart';

class NodeRealTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List sampleData = [
      {"open":50.0, "high":100.0, "low":40.0, "close":80, "volumeto":5000.0},
      {"open":80.0, "high":90.0, "low":55.0, "close":65, "volumeto":4000.0},
      {"open":65.0, "high":120.0, "low":60.0, "close":90, "volumeto":7000.0},
      {"open":90.0, "high":95.0, "low":85.0, "close":80, "volumeto":2000.0},
      {"open":80.0, "high":85.0, "low":40.0, "close":50, "volumeto":3000.0},

      {"open":50.0, "high":100.0, "low":40.0, "close":80, "volumeto":5000.0},
      {"open":80.0, "high":90.0, "low":55.0, "close":65, "volumeto":4000.0},
      {"open":65.0, "high":120.0, "low":60.0, "close":90, "volumeto":7000.0},
      {"open":90.0, "high":95.0, "low":85.0, "close":80, "volumeto":2000.0},
      {"open":80.0, "high":85.0, "low":40.0, "close":50, "volumeto":3000.0},

      {"open":50.0, "high":100.0, "low":40.0, "close":80, "volumeto":5000.0},
      {"open":80.0, "high":90.0, "low":55.0, "close":65, "volumeto":4000.0},
      {"open":65.0, "high":120.0, "low":60.0, "close":90, "volumeto":7000.0},
      {"open":90.0, "high":95.0, "low":85.0, "close":80, "volumeto":2000.0},
      {"open":80.0, "high":85.0, "low":40.0, "close":50, "volumeto":3000.0},
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
                  enableGridLines: false,
                  volumeProp: 0.2
              ),
            ),
            Spacer(),

            Row(
              children: [

              ],
            )
          ],
        ),
      ),
    );
  }


}
