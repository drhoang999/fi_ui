import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../connection/connection.dart';

class SecurityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "SETTINGS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/png/face_id.png',
                  height: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enable face detection for extra security",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Allows you to quickly access your wallet with a quick glance at your phone. Also used as an additional security check for approving transactions.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonBottomBack(
                  onTap: () {
                    Get.back();
                  },
                ),
                ButtonConfirm(
                  text: "ENABLE",
                )
              ],
            )
          ],
        ),
      ),
    );
  }


}
