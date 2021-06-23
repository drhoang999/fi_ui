import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/const/color.dart';
import 'package:fi_ui/screen/connect/check_connect.dart';
import 'package:fi_ui/screen/list_of_nodes/list_of_nodes.dart';
import 'package:flutter/material.dart';

class ImportFromQr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: IbePrimaryColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 50,
              ),
            ),
            Text(
              "IMPORT USING SEED PHRASE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Antonio",
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: <Color>[Color(0xff64D2FF), Color(0xff5E5CE6)],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0))),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "How do you want to import \nyour wallet?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    maxLength: 20,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                      labelText: 'Scan QR code',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      helperText: 'From a paper backup.',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    maxLength: 20,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      icon: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                      labelText: 'Enter recovery phrase',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      helperText: 'A combination of 12 to 24 words.',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    maxLength: 20,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      icon: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                      labelText: 'Load backup file',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      helperText: 'Most likely named wallet.dat',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  TextFormField(
                    cursorColor: Theme.of(context).cursorColor,
                    maxLength: 20,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      icon: Icon(
                        Icons.qr_code,
                        color: Colors.white,
                      ),
                      labelText: 'View-only wallet',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                      helperText: 'From an extended public key.',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Color(0xff607fee),
                        width: 1,
                      ),
                      color: Color(0xff010a43),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  child: Text(
                                    "How does this work?",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [

                      ButtonBottomBack(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckConnectScreen()));
                        },
                      ),


                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
