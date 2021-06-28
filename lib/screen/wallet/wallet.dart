import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fi_ui/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'select_wallet.dart';

class WalletScreen extends StatelessWidget {
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
              "WALLET",
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
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SelectWallet());
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "Wallet ABC",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Text("\$49,329.77",
                  style: TextStyle(
                    fontSize: 25,
                    height: 2,
                    color: Colors.white
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 170,
                    width: double.infinity,
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
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
                      icon: Icons.send_outlined, text: "Share link"),
                  Divider(
                    color: Colors.white,
                    height: 20,
                  ),
                  buildItemOption(icon: Icons.copy, text: "Copy QR code"),
                  Divider(
                    color: Colors.white,
                    height: 20,
                  ),
                  buildItemOption(icon: Icons.copy, text: "Copy link"),
                  Divider(
                    color: Colors.white,
                    height: 20,
                  ),
                  buildItemOption(icon: Icons.arrow_downward_sharp, text: "Download QR Code"),
                  Divider(
                    color: Colors.white,
                    height: 20,
                  ),
                  buildItemOption(icon: Icons.delete, text: "Delete"),
                ],
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonBottomBack(
                  onTap: () {
                    Get.back();
                  },
                ),
              ButtonConfirm(
                text: "VIEW TRANSACTION",
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
