import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/components/card/wallet_card.dart';
import 'package:fi_ui/components/text_field/text_field_no_icon.dart';
import 'package:fi_ui/screen/qr_code/qr_code.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'confirm.dart';

class SendScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        "SEND",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        showModalBottomCards();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Source',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Inter',
                                fontSize: 15,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          ),
                          Text(
                            'n/a',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(187, 187, 187, 1),
                                fontFamily: 'Inter',
                                fontSize: 16,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    TextFiledNoIcon(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "You can also...",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(QrCodeScreen());
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            border: Border.all(color: Colors.white)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/svg/qr.svg',
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Scan QR Code",
                              style: TextStyle(color: Colors.white, fontSize: 17),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    height: 58,
                    width: 58,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.keyboard_backspace_rounded,
                      color: Color(0xff343EDF),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.to(ConfirmScreen());
                  },
                  child: Container(
                      height: 58,
                      width: 200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xff343EDF),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void showModalBottomCards() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: Get.context,
        backgroundColor: Color(0xff10194E),
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      child: Container(
                          margin: EdgeInsets.only(top: 5, bottom: 10),
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
                    ),
                    Expanded(child: Container(
                      alignment: Alignment.topRight,
                      child: Text("Cancel", style: TextStyle(
                        color: Color(0xff0078F8)
                      ),),
                    )),
                  ],
                ),

                Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => WalletCard()),
                ),

                SizedBox(
                  height: 50,
                )
              ],
            ),
          );
        });
  }
}
