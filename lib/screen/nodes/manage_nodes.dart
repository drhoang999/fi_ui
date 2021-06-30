import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'create_node.dart';
import 'node_real_time/node_real_time.dart';

class ManageNodesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff010A43),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "NODES",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) => buildListItem(
                        onTap: () {
                          Get.to(NodeRealTime());
                        },
                        text: "qNode 1",
                        linkImage: "http://via.placeholder.com/350x150",
                        sub: "35 transactions"))),
            SizedBox(
              height: 10,
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
                  text: "CREATE",
                  onTap: () {
                    Get.to(CreateNodeScreen());
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildListItem({
    String text,
    String sub,
    String linkImage,
    Function onTap,
    int ms = 0,
  }) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          children: [
            Row(
              children: [
                CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: linkImage,
                  imageBuilder: (context, imageProvider) => Container(
                    width: 106.0,
                    height: 106.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                          image: imageProvider, fit: BoxFit.cover),
                    ),
                  ),
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text ?? "",
                      style: TextStyle(color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3, bottom: 3),
                      child: Text(
                        sub ?? "",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 20,
                          height: 5,
                          decoration: BoxDecoration(
                              color: ms < 10
                                  ? Color(0xff2D9CDB)
                                  : (ms < 50
                                      ? Color(0xff2D9CDB)
                                      : Color(0xffBB6BD9)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        Text(
                          " ${ms}ms",
                          style: TextStyle(
                            fontSize: 10,
                            color: ms < 10
                                ? Color(0xff2D9CDB)
                                : (ms < 50
                                    ? Color(0xff2D9CDB)
                                    : Color(0xffBB6BD9)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 12,
              color: Color(0xff3DD598),
            )
          ],
        ),
      ),
    );
  }
}
