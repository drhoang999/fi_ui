import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'connection/connection.dart';
import 'contacts/contacts.dart';
import 'security/security.dart';
import 'wallet/create_wallet.dart';


class SettingsScreenScreen extends StatelessWidget {
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
            Expanded(child: Column(
              children: [
                buildListItem(
                  icon: Icon(Icons.send_outlined,color: Colors.white,),
                  text: "Connection",
                  colorIcon: Color(0xffF7931A),
                  onTap: () {
                    Get.to(ConnectionSettingScreen());
                  }
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                buildListItem(
                    icon: Icon(Icons.more_horiz,color: Colors.white,),
                    text: "Security",
                    colorIcon: Color(0xff27AE60),
                  onTap: () {
                      Get.to(SecurityScreen());
                  }
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                buildListItem(
                    icon: Icon(Icons.margin,color: Colors.white,),
                    text: "Wallets",
                    colorIcon: Color(0xff2D9CDB),
                    textTrailing: "6 wallets",
                  onTap: () {
                      Get.to(CreateWalletScreen());
                  }
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                buildListItem(
                    icon: Icon(Icons.margin,color: Colors.white,),
                    text: "Notifications",
                    colorIcon: Color(0xff2D9CDB)
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                buildListItem(
                    icon: Icon(Icons.margin,color: Colors.white,),
                    text: "Contacts",
                    colorIcon: Color(0xff2D9CDB),
                  onTap: () {
                    Get.to(
                        ContactSettingScreen()
                    );
                  }
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                buildListItem(
                    icon: Icon(Icons.margin,color: Colors.white,),
                    text: "Nodes",
                  textTrailing: "6 nodes"
                ),
                Divider(
                  height: 1,
                  color: Colors.grey,
                ),
                buildListItem(
                    icon: Icon(Icons.clear,color: Colors.white,),
                    text: "Log out",
                  colorIcon: Color(0xffBB6BD9)
                ),
              ],
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

  Widget buildListItem({String text, Icon icon,Function onTap, Color colorIcon, String textTrailing }) {


    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Row(
              children: [
                CircleAvatar(
                    backgroundColor: colorIcon,
                    child: icon),
                SizedBox(
                  width: 10,
                ),
                Text(text ?? "", style: TextStyle(
                    color: Colors.white
                ),),
              ],
            ),
            Spacer(),

            Padding(
              padding: const EdgeInsets.only(right: 7),
              child: Text(textTrailing ?? "", style: TextStyle(
                  color: Colors.white
              ),),
            ),
            Icon(Icons.arrow_forward_ios_outlined,
              size: 12,
              color: Color(0xff3DD598),
            )
          ],
        ),
      ),
    );
  }
}
