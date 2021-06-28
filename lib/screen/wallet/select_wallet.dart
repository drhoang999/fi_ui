import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/components/card/wallet_card.dart';
import 'package:fi_ui/const/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'manage_wallet.dart';

class SelectWallet extends StatelessWidget {
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
                alignment: Alignment.centerRight,
                child: Text(
                  "Select",
                  style: TextStyle(color: Color(0xff3DD598), fontSize: 17),
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: List.generate(2, (index) => WalletCard()),
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
                    text: "CREATE",
                    onTap: () {
                      Get.to(ManageWallet());                    },
                  )
                ],
              ),
              SizedBox(
                height: 10,
              )
            ]),
      ),
    );
  }
}
