import 'package:carousel_slider/carousel_slider.dart';
import 'package:fi_ui/components/text/gradient_text.dart';
import 'package:fi_ui/const/color.dart';
import 'package:fi_ui/screen/connect/widget/button_handle_connect_widget.dart';
import 'package:fi_ui/screen/home/home.dart';
import 'package:fi_ui/screen/import_from_qr/import_from_qr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import 'widget/pick_location.dart';
import 'widget/round_arch_check_connect_speed.dart';
import 'widget/round_arch_connected.dart';
import 'widget/round_arch_doing.dart';

enum STATUS_CONNECT { NONE, CONNECTING, CONNECTED }

var LIST_NODE = [
  new NodeFlag(
      image: "assets/images/png/flag1.png", name: "Node ABCD", ms: "20 ms"),
  new NodeFlag(
      image: "assets/images/png/flag2.png", name: "VIET NAM", ms: "qNode 1"),
  new NodeFlag(
      image: "assets/images/png/flag3.png", name: "qNode XYZ", ms: "20 ms"),
];

class NodeFlag {
  String image;
  String name;
  String ms;

  NodeFlag({this.image, this.name, this.ms});
}

class ConnectScreen extends StatefulWidget {
  @override
  _ConnectScreenState createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  STATUS_CONNECT statusConnect = STATUS_CONNECT.NONE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background 1
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff5E5CE6),
                  Color(0xff64D2FF),
                ],
                end: Alignment.bottomLeft,
                begin: Alignment.topRight,
              ),
            ),
          ),

          //circle top
          statusConnect != STATUS_CONNECT.NONE
              ? Container()
              : Positioned(
                  top: -Get.height * 0.6,
                  right: -Get.width / 2,
                  left: -Get.width / 2,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          height: Get.height,
                          width: Get.height,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff010A43)),
                        ),
                      ),
                    ],
                  ),
                ),
          //Background 2
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 3,
                  child: statusConnect == STATUS_CONNECT.NONE
                      ? RoundArchCheckConnectSpeed(
                          speed: "10MS",
                          onTap: () {
                            setState(() {
                              statusConnect = STATUS_CONNECT.CONNECTING;
                            });
                          },
                        )
                      : statusConnect == STATUS_CONNECT.CONNECTING
                          ? RoundArchDoing()
                          : RoundArchConnected(),
                ),
                Expanded(flex: 3, child: Container())
              ],
            ),
          ),

          //Cirle bot
          Positioned(
            bottom: -Get.height * 0.325,
            right: -Get.width / 2,
            left: -Get.width / 2,
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: Get.height,
                    width: Get.height,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xff010A43)),
                  ),
                ),
              ],
            ),
          ),

          //contect head
          Align(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).padding.top,
                ),
                SizedBox(
                  height: 20,
                ),
                statusConnect == STATUS_CONNECT.NONE
                    ? Column(
                        children: [
                          ShaderMask(
                            child: Image.asset(
                              'assets/images/png/surf.png',
                              height: 35,
                            ),
                            shaderCallback: (Rect bounds) {
                              return LinearGradient(colors: [
                                Color(0xff64D2FF),
                                Color(0xff5E5CE6),
                              ]).createShader(bounds);
                            },
                            blendMode: BlendMode.srcATop,
                          ),
                          GradientText(
                            statusConnect == STATUS_CONNECT.NONE
                                ? "CHECK CONNECT"
                                : statusConnect == STATUS_CONNECT.CONNECTING
                                    ? "CONNECTING"
                                    : "CONNECTED",
                            fontSize: 20,
                            gradient: LinearGradient(colors: [
                              Color(0xff64D2FF),
                              Color(0xff5E5CE6),
                            ]),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Image.asset(
                            'assets/images/png/surf.png',
                            height: 35,
                          ),
                          Text(
                            statusConnect == STATUS_CONNECT.NONE
                                ? "CHECK CONNECT"
                                : statusConnect == STATUS_CONNECT.CONNECTING
                                    ? "CONNECTING"
                                    : "CONNECTED",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "Antonio",
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1,
                                color: Colors.white),
                          ),
                        ],
                      ),
                statusConnect != STATUS_CONNECT.CONNECTED
                    ? Container()
                    : buildInfoConnected()
              ],
            ),
          ),

          //above button
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 4,
                  child: Container(),
                ),
                Expanded(flex: 4, child: Container()),
                Expanded(
                    flex: 4,
                    child: Center(
                      child: ButtonHandleConnectWidget(
                        statusConnect: statusConnect,
                        speed: "10MS",
                        onTap: () {
                          changeStatus();
                        },
                      ),
                    )),
                Expanded(
                    flex: 16,
                    child: Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          image: statusConnect == STATUS_CONNECT.NONE
                              ? DecorationImage(
                                  image: new ExactAssetImage(
                                      'assets/images/png/map.png'),
                                  fit: BoxFit.contain,
                                )
                              : null,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            statusConnect == STATUS_CONNECT.CONNECTING
                                ? Column(
                                    children: [
                                      SpinKitCircle(
                                        color: Color(0xff64D2FF),
                                        size: 30.0,
                                      ),
                                      Text(
                                        "80%",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Color(0xff64D2FF)),
                                      ),
                                    ],
                                  )
                                : Container(),
                            Container(
                              child: PickLocationWidget(),
                            ),
                            buildHandleButton(
                                text: statusConnect == STATUS_CONNECT.NONE
                                    ? "CANCEL"
                                    : statusConnect == STATUS_CONNECT.CONNECTING
                                        ? "SKIP"
                                        : "CONNECTED",
                                onTap: () {
                                  changeStatus();
                                }),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }

  void changeStatus() {
    if (statusConnect == STATUS_CONNECT.NONE) {
      setState(() {
        statusConnect = STATUS_CONNECT.CONNECTING;
      });
    } else if (statusConnect == STATUS_CONNECT.CONNECTING) {
      setState(() {
        statusConnect = STATUS_CONNECT.CONNECTED;
      });
    } else if (statusConnect == STATUS_CONNECT.CONNECTED) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  Widget buildHandleButton({Function onTap, String text}) {
    if (statusConnect == STATUS_CONNECT.CONNECTED) {
      return InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        },
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Image.asset(
              'assets/images/png/hour_glass.png',
              height: 30,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '00:10:32',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(100, 210, 255, 1),
                  fontFamily: 'Antonio',
                  fontSize: 26,
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal,
                  height: 1.2307692307692308),
            ),
            Text(
              'Session',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(147, 167, 200, 1),
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1),
            )
          ],
        ),
      );
    }

    return InkWell(
      onTap: () {
        onTap();
      },
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromRGBO(100, 210, 255, 1),
                fontFamily: 'Poppins',
                fontSize: 22,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/images/png/lightning.png",
            height: 30,
            width: 30,
            color: Color(0xff64D2FF),
          ),
        ],
      ),
    );
  }

  Widget buildInfoConnected() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Image.asset(
              'assets/images/png/hard_drive.png',
              height: 35,
            ),
            Text(
              "10",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: "Antonio",
                fontWeight: FontWeight.w300,
                letterSpacing: 1,
              ),
            ),
            Text(
              "microseconds",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Image.asset(
              'assets/images/png/session_second.png',
              height: 35,
            ),
            Text(
              "FREE",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: "Antonio",
                fontWeight: FontWeight.w300,
                letterSpacing: 1,
              ),
            ),
            Text(
              "transaction.dart",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}
