import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/components/text_field/text_field_no_icon.dart';
import 'package:fi_ui/const/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'key_setup.dart';

class CreateWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: IbePrimaryColor,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    "WALLET",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Name of Wallet",style: TextStyle(
                    color: Colors.white
                  ),),
                ),
                TextFiledNoIcon(
                  hintText: "",
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
                      text: "NEXT",
                      onTap: () {
                        Get.to(KeySetupScreen());
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ]),
        ));
  }
}
