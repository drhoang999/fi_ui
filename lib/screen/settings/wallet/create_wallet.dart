import 'package:carousel_slider/carousel_slider.dart';
import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateWalletScreen extends StatelessWidget {
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
              "CREATE WALLET",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "What type of wallet do you want to create?",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                buildListItem(
                    text: "Personal for small amounts",
                    sub: "Wallet is secured on this device."),
                Divider(
                  color: Colors.grey,
                ),
                buildListItem(
                    text: "Shared for large amounts",
                    sub:
                        "Coordinate with people you trust to secure your wallet."),
              ],
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonBottomBack(
                  onTap: () {
                    Get.back();
                  },
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

  Widget buildListItem({String text, String sub, Function onTap}) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text ?? "", style: TextStyle(
                    color: Colors.white
                  ),),
                  Text(sub ?? "", style: TextStyle(
                      color: Colors.grey
                  ),)
                ],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
