import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WalletCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20,right: 20,bottom: 20),

      child: Container(
        width: Get.width*0.8,
        height: 150,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
            image: DecorationImage(
              image: AssetImage(
                  "assets/images/png/background_card_wallet.png"),
              fit: BoxFit.fill,
            ),
          borderRadius: BorderRadius.all(Radius.circular(25)),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff321D5F),
                Colors.white,
                Color(0xffF37293),
              ],
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$49,329.77", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                    SvgPicture.asset(
                      'assets/images/svg/bitcoin.svg',
                      width: 32,
                      height: 32,
                      color: Colors.white,
                    ),
                  ],
                ),
                Text("Your balance is equivalent", style: TextStyle(
                  color: Colors.grey[300]
                ),),
              ],
            ),
            Container(
                width: 88.9863052368164,
                height: 24,
                child: Text("Wallet ABC",style: TextStyle(
                  color: Colors.white
                ),),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius : BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color : Color.fromRGBO(255, 255, 255, 0.20000000298023224),

                )
            )
          ],
        ),
      ),
    );
  }
}