import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/screen/send/success.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "CONFIRM TRANSACTION",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Source",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Text(
                      "Wallet ABC",
                      style: TextStyle(color: Color(0xffBBBBBB)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xff3DD598),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "To",
                      style: TextStyle(color: Color(0xffB1AFCD)),
                    ),
                  ),
                  Text(
                    "0xAAAAAAASSSSSSAAAAAAASSSSSSAAAAAAAAA",
                    style: TextStyle(color: Color(0xffD8D8D8)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                        color: Color(0xffB1AFCD), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "180.234",
                    style: TextStyle(color: Color(0xffE3507A)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fee",
                    style: TextStyle(
                        color: Color(0xffB1AFCD), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "0.12",
                    style: TextStyle(color: Color(0xffD8D8D8)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Time",
                    style: TextStyle(
                        color: Color(0xffB1AFCD), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Aug 12, 2021 at 4:35pm",
                    style: TextStyle(color: Color(0xffD8D8D8)),
                  )
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonBottomBack(
                  onTap: () {
                    Get.back();
                  },
                ),
                ButtonConfirm(
                  text: "SEND",
                  onTap: () {
                    Get.to(SuccessScreen());
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
