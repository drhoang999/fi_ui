import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/const/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'create_wallet.dart';

class ManageWallet extends StatelessWidget {
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
                height: 50,
              ),
              Text(
                "How do you want to start?",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildItemList(
                        title: "Create personal wallet",
                        sub: "Quick and easy to set up."),
                    Divider(
                      color: Colors.white,
                    ),
                    buildItemList(
                        title: "Create shared wallet",
                        sub: "Requires multiple devices."),
                    Divider(
                      color: Colors.white,
                    ),
                    buildItemList(
                        title: "Join shared wallet",
                        sub: "Accept an invite to a shared wallet."),
                    Divider(
                      color: Colors.white,
                    ),
                    buildItemList(
                        title: "Import wallet",
                        sub: "Recover your wallet from a recovery phrase."),
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
                    text: "NEXT",
                    onTap: () {
                      Get.to(CreateWallet());
                    },
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

  Widget buildItemList({String title, String sub, Function onTap}) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                title ?? "",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                title ?? "",
                style: TextStyle(color: Color(0xffD8D8D8)),
              ),
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.navigate_next,
                color: Colors.grey,
              ),
              onPressed: () {
                onTap();
              })
        ],
      ),
    );
  }
}
