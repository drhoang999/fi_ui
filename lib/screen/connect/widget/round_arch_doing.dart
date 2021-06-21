import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoundArchDoing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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

        // Container(
        //   width: 88,
        //   height: 88,
        //   child: Stack(
        //     children: [
        //       Container(
        //         width: 88,
        //         height: 88,
        //         decoration: BoxDecoration(
        //           shape: BoxShape.circle,
        //           color: Color(0xff364156),
        //         ),
        //       ),
        //       Positioned.fill(
        //         child: Align(
        //           alignment: Alignment.center,
        //           child: SizedBox(
        //             width: 88,
        //             child: Text(
        //               "10MS",
        //               textAlign: TextAlign.center,
        //               style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 20,
        //                 fontFamily: "Antonio",
        //                 fontWeight: FontWeight.w300,
        //                 letterSpacing: 1,
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}