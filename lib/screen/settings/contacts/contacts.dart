import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/screen/send/confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../connection/connection.dart';
import '../security/security.dart';
import 'detail_contact.dart';

class ContactSettingScreen extends StatelessWidget {
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
              "CONTACTS",
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
            SizedBox(

              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: new InputDecoration(

                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                  border: new OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white)),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white, width: 1.0),
                  ),
                  hintText: 'Search ...',
                  hintStyle: TextStyle(color: Colors.grey),
                  labelStyle: TextStyle(color: Colors.grey),
                  suffixText: "Filter",
                  suffixStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  suffixIcon: Icon(Icons.arrow_drop_down_outlined, color: Colors.grey,)

                ),
              ),
            ),
            Expanded(
                child: Column(
              children: List.generate(
                5,
                (index) => Column(
                  children: [
                    Divider(height: 1,color: Colors.grey,),
                    buildListItem(
                        text: "Beatrice Phillips",
                        sub: "Family · 3 transactions",
                        onTap: () {
                          Get.to(ContactDetailScreen());
                        }),
                  ],
                ),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildListItem({
    String text,
    String sub,
    Function onTap,
  }) {
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
                ClipOval(
                  child: CachedNetworkImage(
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                    imageUrl: "http://via.placeholder.com/350x150",
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text ?? "",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      sub ?? "",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
