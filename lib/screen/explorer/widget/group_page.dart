import 'package:fi_ui/const/color.dart';
import 'package:flutter/material.dart';

class GroupPageScreen extends StatefulWidget {
  @override
  _GroupPageScreenState createState() => _GroupPageScreenState();
}

class _GroupPageScreenState extends State<GroupPageScreen> {
  bool isShowTabs = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = size.width / 2 + 30;
    final double itemWidth = size.width / 2;

    return Scaffold(
      backgroundColor: IbePrimaryColor,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: (itemWidth / itemHeight),
                  children: List.generate(2, (index) {
                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff6080EE),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              child: index % 2 == 0
                                  ? buildItemAdd()
                                  : buildHasPage()),
                        ),
                        Column(
                          children: [
                            Text(
                              index % 2 == 0
                                  ? "New Tab" : "Google",
                              style: TextStyle(color: Colors.white),
                            ),
                             Text(
                              index % 2 == 0
                                  ? "" : "google.com.vn",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                          ],
                        )
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
          isShowTabs == false ? Container() : tabsGroup(context),
        ],
      ),
    );
  }

  Widget tabsGroup(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = size.width / 2 + 30;
    final double itemWidth = size.width / 2;

    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isShowTabs = false;
            });
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black54,
          ),
        ),
        Container(
          width: size.width * 0.9,
          height: size.height * 0.7,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xff6080EE)),
              color: IbePrimaryColor),
          child: Column(
            children: [
              Container(
                height: 50,
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.keyboard_backspace_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            isShowTabs = false;
                          });
                        }),
                    Text(
                      "2 Tab",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1.0,
                  mainAxisSpacing: 5.0,
                  childAspectRatio: (itemWidth / itemHeight),
                  children: List.generate(2, (index) {
                    return Column(
                      children: [
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xff6080EE),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4))),
                              child: index % 2 == 0
                                  ? buildItemAdd()
                                  : buildHasPage()),
                        ),
                        Column(
                          children: [
                            Text(
                              index % 2 == 0
                                  ? "New Tab" : "Google",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              index % 2 == 0
                                  ? "" : "google.com.vn",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildItemAdd() {
    return Center(
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xff6080EE),
          ),
          shape: BoxShape.circle,
        ),
        child: IconButton(
          iconSize: 20,
          icon: Icon(
            Icons.add,
            color: Color(0xff6080EE),
          ),
        ),
      ),
    );
  }

  Widget buildHasPage() {
    return InkWell(
      onTap: () {
        setState(() {
          isShowTabs = true;
        });
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            color: Colors.white,
          ),
          IconButton(
            iconSize: 35,
            icon: Icon(Icons.highlight_remove),
            onPressed: () {},
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
