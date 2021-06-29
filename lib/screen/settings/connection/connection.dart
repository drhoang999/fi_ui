import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ConnectionSettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "SETTINGS",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Connection",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  buildListItem(text: "Node", textTrailing: "My Raspberry pi"),
                  buildListItem(text: "Network", textTrailing: "Mainnet"),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Security",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  buildSwitchItem(text: "Startup PIN", selected: false),
                  buildSwitchItem(text: "Cloud backup", selected: false),
                  buildSwitchItem(text: "Face ID", selected: false),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Notifications",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  buildSwitchItem(text: "Receive from node", selected: false),
                  buildSwitchItem(
                      text: "Receive status of transaction", selected: false),
                ],
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ButtonBottomBack(
                  onTap: () {
                    Get.back();
                  },
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildListItem({String text, Function onTap, String textTrailing}) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Text(
              text ?? "",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: Text(
                textTrailing ?? "",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }

  Widget buildSwitchItem({String text, Function onTap, bool selected}) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Text(
              text ?? "",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            CupertinoSwitch(
              trackColor: Colors.grey,
              value: selected,
              onChanged: (va) {},
            )
          ],
        ),
      ),
    );
  }
}
