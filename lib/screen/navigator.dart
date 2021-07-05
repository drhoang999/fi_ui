import 'package:fi_ui/screen/connect/check_connect.dart';
import 'package:fi_ui/screen/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'demo_get/demo_getx.dart';
import 'explorer/explorer.dart';
import 'home/home.dart';
import 'nodes/manage_nodes.dart';
import 'on_boarding/on_boarding.dart';
import 'send/send.dart';
import 'transaction/transaction.dart';
import 'wallet/wallet.dart';

class FiNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigator"),

      ),
      body: Column(
        children: [
          RaisedButton(
            child: Text("OnBoarding"),
              onPressed: () {
                Get.to(
                    OnBoarding()
                );
              }
          ),
          RaisedButton(
              child: Text("Home"),
              onPressed: () {
                Get.to(
                    HomeScreen()
                );
              }
          ),
          RaisedButton(
              child: Text("Connect"),
              onPressed: () {
                Get.to(
                    ConnectScreen()
                );
              }
          ),
          RaisedButton(
              child: Text("SendScreen"),
              onPressed: () {
                Get.to(
                    SendScreen()
                );
              }
          ),

          RaisedButton(
              child: Text("Explorer"),
              onPressed: () {
                Get.to(
                    ExplorerScreen()
                );
              }
          ),

          RaisedButton(
              child: Text("Wallet"),
              onPressed: () {
                Get.to(
                    WalletScreen()
                );
              }
          ),

          RaisedButton(
              child: Text("Settings"),
              onPressed: () {
                Get.to(
                    SettingsScreenScreen()
                );
              }
          ),

          RaisedButton(
              child: Text("ManageNodes"),
              onPressed: () {
                Get.to(
                    ManageNodesScreen()
                );
              }
          ),
          RaisedButton(
              child: Text("DemoGetx"),
              onPressed: () {
                Get.to(
                    DemoGetx()
                );
              }
          ),

          RaisedButton(
              child: Text("Transaction"),
              onPressed: () {
                Get.to(
                    TransactionScreenScreen()
                );
              }
          ),

        ],
      ),
    );
  }
}