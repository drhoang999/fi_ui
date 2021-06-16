import 'package:fi_ui/const/color.dart';
import 'package:fi_ui/screen/create_account/create_account.dart';
import 'package:flutter/material.dart';

import 'widget/circle_fi/circle_fi.dart';

class WalletSetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: IbePrimaryColor,
        body:  Stack(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleFI(
                  length: 5,
                  listNumber: [1,2,3,4,5],
                ),
                Text(
                  "FI",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: "Antonio",
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                      foreground: Paint()
                        ..shader = LinearGradient(
                          colors: <Color>[Color(0xff85FFC4), Color(0xffBC85FF)],
                        ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[

                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        color: Color.fromRGBO(28, 25, 36, 1),
                      ),
                      padding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: <Widget>[
                          Text(
                            "Import Using Seed Phrase",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: "Antonio",
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                                foreground: Paint()
                                  ..shader = LinearGradient(
                                    colors: <Color>[Color(0xff85FFC4), Color(0xffBC85FF)],
                                  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))),
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 24),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context)=>CreateAccountScreen()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(100),
                              topRight: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(100),
                            ),
                            gradient: LinearGradient(
                                begin: Alignment(
                                    0.7807308435440063, -0.21926915645599365),
                                end: Alignment(
                                    0.21926915645599365, 0.21926915645599365),
                                colors: [
                                  Color.fromRGBO(133, 255, 196, 1),
                                  Color.fromRGBO(92, 198, 255, 1),
                                  Color.fromRGBO(188, 133, 255, 1)
                                ]),
                          ),
                          padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Create a New Account',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    )
                  ],
                )
              ],
            ),
          ],
        ),);
  }
}
