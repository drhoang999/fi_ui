import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


class SuccessCreateWalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Color(0xff27AE60),
                        shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset(
                      'assets/images/svg/sent.svg',
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Wallet created",
                    style: TextStyle(color: Colors.white,
                        fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "It usually takes about 60 seconds for a wallet approved on the world.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xffD8D8D8)),
                  )
                ],
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
                ButtonConfirm(
                  text: "VIEW",
                  onTap: () {

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
