import 'package:fi_ui/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../check_connect.dart';

class ButtonHandleConnectWidget extends StatelessWidget {
  final Function onTap;
  final STATUS_CONNECT statusConnect;
  final String speed;

  const ButtonHandleConnectWidget(
      {Key key, this.onTap, this.statusConnect, this.speed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
                  border: Border.all(color: Colors.white.withOpacity(0.5)),
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
        Positioned.fill(
          child: buildButton(),
        )
      ],
    );
  }

  Widget buildButton() {
    if (statusConnect == STATUS_CONNECT.CONNECTING) {
      return Container(
        width: 88,
        height: 88,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff364156),
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 88,
                  child: Text(
                    "10MS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
      );
    }

    if (statusConnect == STATUS_CONNECT.CONNECTED) {
      return InkWell(
        onTap: () {
          onTap();
        },
        child: Container(
          width: 88,
          height: 88,
          child: Stack(
            alignment: Alignment.center,
            children: [

              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black12, width: 3),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Color(0xff5e5ce6), Color(0xff64d2ff)],
                  ),
                ),
              ),
              Text(
                "10MS",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: "Antonio",
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 88,
        height: 88,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black12, width: 3),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Color(0xff5e5ce6), Color(0xff64d2ff)],
                ),
              ),
            ),
            Text(
              speed ?? "",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "Antonio",
                fontWeight: FontWeight.w300,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
