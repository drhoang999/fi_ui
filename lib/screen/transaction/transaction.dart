import 'package:fi_ui/components/navigator_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'detail_transaction/detail_body_transaction.dart';
import 'detail_transaction/detail_transaction.dart';
import 'widget/paint_chart.dart';

enum TYPE_STATUS_TRANSACTION { SUCCESS, PENDING, FAILED, ERROR }

class TransactionScreenScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Your balance is \$100,000",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "Last month, you spent \$2,719",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    height: 250,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        PaintChart(),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text("Receive"),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xff50E3C2),
                                            radius: 5,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "\$2,730",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  Column(
                                    children: [
                                      Text("Send"),
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Color(0xffE3507A),
                                            radius: 5,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "\$1,460",
                                            style: TextStyle(fontSize: 22),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Transactions",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              "Filter",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.arrow_drop_down_outlined,
                                color: Colors.white)
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        buildListItem(
                            typeStatusTransaction:
                                TYPE_STATUS_TRANSACTION.SUCCESS),
                        buildListItem(
                            typeStatusTransaction:
                                TYPE_STATUS_TRANSACTION.PENDING),
                        buildListItem(
                            typeStatusTransaction:
                                TYPE_STATUS_TRANSACTION.FAILED),
                        buildListItem(
                            typeStatusTransaction:
                                TYPE_STATUS_TRANSACTION.ERROR)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: NavigatorBar()),
        ],
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: Text(
                          "Refresh",
                          style: TextStyle(color: Color(0xff0078F8)),
                        ),
                      )),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(top: 5, bottom: 10),
                            width: 30,
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
                      ),
                      Expanded(
                          child: Container(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Color(0xff0078F8)),
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                DetailBodyTransaction(),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          );
        });
  }

  Widget buildListItem({TYPE_STATUS_TRANSACTION typeStatusTransaction}) {
    var color = Color(0xffE3507A);
    Widget leading = Container(
      height: 50,
      width: 50,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
    );

    if (typeStatusTransaction == TYPE_STATUS_TRANSACTION.FAILED) {
      color = Color(0xffE3507A);
      leading = Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
      );
    }

    if (typeStatusTransaction == TYPE_STATUS_TRANSACTION.SUCCESS) {
      color = Color(0xff50E3C2);
      leading = Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
      );
    }

    if (typeStatusTransaction == TYPE_STATUS_TRANSACTION.PENDING) {
      color = Color(0xffE3507A);
      leading = Container(
        height: 50,
        width: 50,
        child: Icon(
          Icons.send_outlined,
          color: Colors.green,
          size: 30,
        ),
      );
    }

    if (typeStatusTransaction == TYPE_STATUS_TRANSACTION.ERROR) {
      color = Color(0xff50E3C2);
      leading = Container(
        height: 50,
        width: 50,
        child: Icon(
          Icons.highlight_remove_rounded,
          color: Colors.red,
          size: 30,
        ),
      );
    }

    return Column(
      children: [
        InkWell(
          onTap: () {
            showModalBottomCards();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                leading,
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "0xAAAAAA",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                    Text(
                      "wallet ABC",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Text(
                      "\$200",
                      style: TextStyle(
                          color: color,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                    Text(
                      "qNode 1",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 1,
          color: Colors.grey,
        )
      ],
    );
  }
}
