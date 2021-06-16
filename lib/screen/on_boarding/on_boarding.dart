import 'package:fi_ui/const/color.dart';
import 'package:fi_ui/screen/wallet_set_up/wallet_set_up.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoarding extends StatelessWidget {
  PageController _controller = new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: IbePrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Text(
                "SKIP",
                style: TextStyle(color: Color(0xff3DD598)),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                children: List.generate(
                  3,
                  (index) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/png/page1.png'),
                      Column(
                        children: [
                          Text(
                            "CREATE WALLETS",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Create wallet with multi sign",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      )
                    ],
                  ),
                ).toList(),
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,

              effect: ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Colors.grey,
                activeDotColor: Colors.white,
              ),
            ),
            Column(
              children: [

                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                              Icons.west_rounded,
                              color: Color(0xff3DD598),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 237,
                      height: 57,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WalletSetUp()));
                            },
                            child: Container(
                              width: 237,
                              height: 57,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xff343edf),
                              ),
                              padding: const EdgeInsets.only(
                                left: 97,
                                right: 79,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 61,
                                    height: 17,
                                    child: Text(
                                      "NEXT",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
