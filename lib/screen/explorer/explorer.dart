import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/components/card/wallet_card.dart';
import 'package:fi_ui/const/color.dart';
import 'package:fi_ui/screen/explorer/widget/none_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

import 'widget/group_page.dart';

class ExplorerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: IbePrimaryColor,
      body: Column(
        children: [
          Expanded(child: NonePageWidget()),
          buildGroupPage(),
          buildTextField(),
          Container(
            color: Color(0xff010A43),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 1,
                  child: IconButton(
                      icon: Icon(
                        Icons.keyboard_backspace_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {}),
                ),
                Flexible(
                  flex: 1,
                  child: Transform.rotate(
                    angle: 180 * math.pi / 180,
                    child: IconButton(
                        icon: Icon(
                          Icons.keyboard_backspace_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () {}),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: SvgPicture.asset(
                    'assets/images/svg/home.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      Get.to(GroupPageScreen());
                    },
                    child: Container(
                      child: Text(
                        "1",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      padding:
                          EdgeInsets.only(top: 2, bottom: 2, right: 7, left: 7),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                      iconSize: 32,
                      onPressed: () {
                        showModalBottomCards();
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildTextField() {
    return Container(
      height: 65,
        padding: const EdgeInsets.all(8.0),
        child: Theme(
          data: Theme.of(Get.context).copyWith(splashColor: Colors.transparent),
          child: TextField(
            textAlign: TextAlign.center,
            autofocus: false,
            style: TextStyle(fontSize: 22.0, color: Color(0xFFbdc6cf)),
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xff5E6268),
              hintText: 'go',
              suffixIcon:  Icon(Icons.search,color: Colors.white,),
              contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff5E6268),),
                borderRadius: BorderRadius.circular(25.7),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xff5E6268),),
                borderRadius: BorderRadius.circular(25.7),
              ),
            ),
          ),
        ),
    );
  }

  void showModalBottomCards() {
    showModalBottomSheet(
      isScrollControlled: true,
        context: Get.context,
        backgroundColor: Color(0xff10194E),
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 5,bottom: 10),
                    width: 64,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Color.fromRGBO(78, 88, 159, 1),
                    )),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff17215A),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Amount",
                            style: TextStyle(
                                color: Color(0xffD8D8D8),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "200",
                            style: TextStyle(color: Color(0xffD8D8D8)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Fee",
                            style: TextStyle(
                                color: Color(0xffD8D8D8),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "10",
                            style: TextStyle(color: Color(0xffD8D8D8)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "210",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Source:",
                        style: TextStyle(
                          color: Color(0xffD8D8D8),
                        ),
                      ),
                      Text(
                        "Via qNode 1",
                        style: TextStyle(color: Color(0xffD8D8D8)),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => WalletCard()),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonBottomBack(
                      onTap: () {
                        Get.back();
                      },
                    ),
                    ButtonConfirm(
                      text: "PAY",
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          );
        });
  }

  Widget buildGroupPage() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.keyboard_arrow_up_outlined,
                color: Colors.white,
              ),
              onPressed: () {

              }),
          Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 35,
                            width: 35,

                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
    image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/120px-Google_%22G%22_Logo.svg.png")),
                                border: Border.all(
                                  color: Colors.lightBlue,
                                    width: 3
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 15,
                            width: 15,
                            child: Icon(
                              Icons.clear,
                              size: 10,
                              color: Colors.white,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.lightBlue,

                            ),
                          ),
                        ],
                      ))),
          IconButton(
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
