import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DetailBodyTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/images/svg/sent.svg',
         width: Get.width,
          color: Colors.yellow.withOpacity(0.6),
        ),
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Status",
                    style: TextStyle(
                        color: Color(0xffB1AFCD), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Completed",
                    style: TextStyle(color: Color(0xffE3507A)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Time",
                    style: TextStyle(
                        color: Color(0xffB1AFCD), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Aug 12, 2021 at 4:35pm",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "From",
                      style: TextStyle(color: Color(0xffB1AFCD)),
                    ),
                  ),
                  Column(
                    children: [
                      Align(

                        child: Text("Wallet ABC" , style: TextStyle(color: Color(0xffB1AFCD)),),
                        alignment: Alignment.topRight,

                      ),
                      Text(
                        "0xAAAAAAASSSSSSAAAAAAASSSSSSAAAAAAAAA",
                        style: TextStyle(color: Color(0xffD8D8D8)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "To",
                      style: TextStyle(color: Color(0xffB1AFCD)),
                    ),
                  ),
                  Text(
                    "0xAAAAAAASSSSSSAAAAAAASSSSSSAAAAAAAAA",
                    style: TextStyle(color: Color(0xffD8D8D8)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                        color: Color(0xffB1AFCD), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "180.234",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Fee",
                    style: TextStyle(
                        color: Color(0xffB1AFCD), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "0.12",
                    style: TextStyle(color: Color(0xffD8D8D8)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                        color: Color(0xffB1AFCD), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " 180.234",
                    style: TextStyle(color: Color(0xffD8D8D8)),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}