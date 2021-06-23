import 'package:carousel_slider/carousel_slider.dart';
import 'package:fi_ui/const/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListOfNodesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: IbePrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "CREATE ACCOUNT",
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
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "List of nodes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(enlargeCenterPage: true, height: 400.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/png/background_carousel.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Node ABC',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 21,
                                          letterSpacing: 0,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                          ),
                                    ),
                                    CupertinoSwitch(
                                      value: true,
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Text("Fee for approve (token)"),
                                    Text("0"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Location"),
                                    Text("HCM-VN"),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  children: [
                                    Text("Fee Per Transaction"),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("min (token)"),
                                    Text("max (token)"),
                                    Text("percent"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("2"),
                                    Text("10"),
                                    Text("n/a"),
                                  ],
                                ),
                              ],
                            )),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    width: 59,
                    height: 59,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 59,
                          height: 59,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Color(0xff3dd598),
                              width: 1,
                            ),
                          ),
                          child: Icon(
                            Icons.keyboard_backspace_rounded,
                            color: Color(0xff3dd598),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 247,
                  height: 55,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfff4f4f4),
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
                                    color: Colors.black,
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
                                Icons.arrow_back_ios_outlined,
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
