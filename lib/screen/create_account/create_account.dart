import 'package:fi_ui/const/color.dart';
import 'package:fi_ui/screen/import_from_qr/import_from_qr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff5E5CE6),
            Color(0xff64D2FF),
          ],
          begin: Alignment(0.5, -0.5),
          end: Alignment(0.5, 0.5),
        ),
      ),
      child: Stack(
        children: [
          //background
          Container(
            height: Get.height,
            width: Get.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 465,
                      height: 465,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 339,
                                height: 339,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 243,
                                height: 243,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                width: 147,
                                height: 147,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 339,
                      height: 339,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Opacity(
                                opacity: 0.10,
                                child: Container(
                                  width: 435,
                                  height: 435,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Opacity(
                                opacity: 0.20,
                                child: Container(
                                  width: 311,
                                  height: 311,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: Opacity(
                                opacity: 0.30,
                                child: Container(
                                  width: 215,
                                  height: 215,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: Get.height / 2,
                  child: Container(
                    width: Get.height * 1.4,
                    height: Get.height * 1.4,
                    decoration: BoxDecoration(
                      color: Color(0xff010A43),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.30,
                      child: Container(
                        width: 147,
                        height: 147,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Colors.white.withOpacity(0.5)),
                          gradient: LinearGradient(
                            colors: [
                              Colors.white.withOpacity(0),
                              Colors.grey.withOpacity(0.2),
                            ],
                            end: Alignment(0.5, 0.5),
                            begin: Alignment(0.5, -0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 99,
                  height: 99,
                  child: Stack(
                    children: [
                      Container(
                        width: 99,
                        height: 99,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff364156),
                        ),
                      ),
                      Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 99,
                            child: Text(
                              "0%",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontFamily: "Antonio",
                                fontWeight: FontWeight.w300,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: Get.height * 0.65,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: Get.height * 0.1),
                      Image.asset(
                        'assets/images/png/surf.png',
                        height: 35,
                      ),
                      Text(
                        'CREATING ACCOUNT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Antonio',
                            fontSize: 22,
                            letterSpacing: 1,
                            fontWeight: FontWeight.normal,
                            height: 1.2307692307692308),
                      ),
                    ],
                  ),
                ),
                CupertinoActivityIndicator(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Create public key and private key",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff93a7c8),
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "get list of nodes",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff93a7c8),
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 58,
                          width: 58,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff5F66E8)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff010A43),
                          ),
                          child: IconButton(
                              padding: EdgeInsets.all(20),
                              icon: Icon(
                                Icons.west,
                                color: Color(0xff5F66E8),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ImportFromQr()));
                              }),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
