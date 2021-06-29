import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/components/text_field/text_field_with_icon.dart';
import 'package:fi_ui/screen/send/confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../connection/connection.dart';
import '../security/security.dart';

class ContactDetailScreen extends StatelessWidget {
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
              "CONTACT DETAIL",
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
                Text(
                  "Beatrice Phillips",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            TextFormField(
              cursorColor: Theme.of(context).cursorColor,
              maxLength: 20,
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
                hintText: 'Enter a description...',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Color(0xff999999),
                      border: Border.all(color: Colors.grey)),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Text(
                    "Friend",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.grey)),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Text(
                    "Add category",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),

            Expanded(
                child: Column(
              children: [
                TextFieldWithIcon(
                  labelText: 'Email',
                  hintText: 'beatrice.phillips@bitcoin.design',

                ),
                TextFieldWithIcon(
                  labelText: 'Phone',
                  hintText: '+1 49 555 1773',

                ),
                TextFieldWithIcon(

                  icon: Icon(
                    Icons.compare_arrows,
                    color: Colors.white,
                  ),
                  labelText: '12 Transactions',
                  hintText: "Last one 3 days ago",


                ),
                TextFieldWithIcon(
                  icon: Icon(
                    Icons.send_outlined,
                    color: Colors.white,
                  ),
                  labelText: '2 Scheduled payments',
                  hintText: 'Next in 6 days',

                ),
                TextFieldWithIcon(
                  icon: Icon(
                    Icons.qr_code,
                    color: Colors.white,
                  ),
                  labelText: '4 Addresses',
                ),
              ],
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonBottomBack(
                  onTap: () {
                    Get.back();
                  },
                ),
                Container(
                  width: 200,

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                   border: Border.all( color: Color(0xff607AED))
                  ),
                  padding: EdgeInsets.all(20),
                  child: Text("DELETE",style: TextStyle(
                    color: Colors.white
                  ),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
