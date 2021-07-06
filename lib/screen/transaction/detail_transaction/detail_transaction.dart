import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/screen/send/success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../transaction.dart';
import 'detail_body_transaction.dart';

class DetailTransactionScreen extends StatelessWidget {

  final TYPE_STATUS_TRANSACTION typeStatusTransaction;

  const DetailTransactionScreen({Key key, this.typeStatusTransaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var color = Color(0xffE3507A);
    Widget headIcon = Container(
      height: 50,
      width: 50,
      decoration:
      BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
    );

    if (typeStatusTransaction == TYPE_STATUS_TRANSACTION.FAILED) {
      color = Color(0xffE3507A);
      headIcon = Container(
        height: 50,
        width: 50,

      );
    }

    if (typeStatusTransaction == TYPE_STATUS_TRANSACTION.SUCCESS) {
      color = Color(0xff50E3C2);
      headIcon = Container(
        height: 50,
        width: 50,

      );
    }

    if (typeStatusTransaction == TYPE_STATUS_TRANSACTION.PENDING) {
      color = Colors.yellow;
      headIcon = Container(
        height: 50,
        width: 50,
        child:  SvgPicture.asset(
          'assets/images/svg/send.svg',

          color: Colors.yellow,
        ),
      );
    }

    if (typeStatusTransaction == TYPE_STATUS_TRANSACTION.ERROR) {
      color = Color(0xff50E3C2);
      headIcon = Container(
        height: 70,
        width: 70,
        child:  SvgPicture.asset(
          'assets/images/svg/error.svg',

          color: Colors.red,
        ),
      );
    }


    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Text(
              "CONFIRM TRANSACTION",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              height: 150,
              child: headIcon,
            ),
            DetailBodyTransaction(),
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
                  text: "REFRESH",
                  onTap: () {

                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
