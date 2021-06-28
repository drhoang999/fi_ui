import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/const/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'wallet_rule.dart';

class KeySetupScreen extends StatelessWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Key setup",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),),
                  IconButton(
                      icon: Icon(Icons.add_circle_outline,color: Colors.white,), onPressed: () {

                  })
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    buildItemList(
                        key: "Key #1", name: "Me", account: "Me", weight: "0"),
                    buildItemList(
                        key: "Key #1", name: "Me", account: "Me", weight: "0"),
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
                      Get.to(RuleWalletScreen());
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

  Widget buildItemList(
      {String key,
      String name,
      String account,
      String weight,
      Function onTap,
      Function onRemove}) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  key ?? "",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    icon: Icon(
                      Icons.highlight_remove_rounded,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {
                      onRemove();
                    })
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name"),
                Text(name ?? ""),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Account"),
                Text(account ?? ""),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Weight"),
                Text(weight ?? ""),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
