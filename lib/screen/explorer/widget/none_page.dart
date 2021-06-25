import 'package:flutter/material.dart';

class NonePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "PRODUCT",
              style: TextStyle(
                  color: Color(0xff2091F9),
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "AMAZING \n FEATURES",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 80,
            ),
            Image.asset("assets/images/png/none_page_explorer.png"),
            Text("AMAZING \n FEATURES"),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xff08D8CA),
                              Color(0xff2187FF),
                            ],
                          ),
                          shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "FEATURE ONE",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Slate helps you see how many more days you need work to reach your financial goal.",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),

            Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          )),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color(0xff08D8CA),
                              Color(0xff2187FF),
                            ],
                          ),
                          shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "FEATURE TWO",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Slate helps you see how many more days you need work to reach your financial goal.",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
