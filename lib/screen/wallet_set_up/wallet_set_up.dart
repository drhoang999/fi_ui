import 'package:fi_ui/components/text/gradient_text.dart';
import 'package:fi_ui/const/color.dart';
import 'package:fi_ui/screen/create_account/create_account.dart';
import 'package:flutter/material.dart';

import 'widget/circle_fi/circle_fi.dart';

class WalletSetUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: IbePrimaryColor,
      body: Stack(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleFI(
                length: 5,
                listNumber: [1, 2, 3, 4, 5],
              ),
              GradientText(
                "FI",
                gradient: LinearGradient(
                  colors: <Color>[Color(0xff85FFC4), Color(0xffBC85FF)],
                ),
                fontSize: 50,
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
                  Center(
                    child: Container(
                      width: 270,
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
                          EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GradientText(
                            "Import Using Seed Phrase",
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color(0xff85FFC4),
                                Color(0xffBC85FF)
                              ],
                            ),
                            fontSize: 16,
                            fontBold: true,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateAccountScreen()));
                    },
                    child: Container(
                      width: 270,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff85ffc4),
                            Color(0xff5cc6ff),
                            Color(0xffbc85ff)
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        color: Color.fromRGBO(28, 25, 36, 1),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Import Using Seed Phrase",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
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
      ),
    );
  }
}
