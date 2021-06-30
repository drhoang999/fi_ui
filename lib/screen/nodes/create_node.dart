import 'package:cached_network_image/cached_network_image.dart';
import 'package:fi_ui/components/button/button_bottom_back.dart';
import 'package:fi_ui/components/button/button_confirm.dart';
import 'package:fi_ui/components/text_field/text_field_no_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNodeScreen extends StatelessWidget {
  PageController _controller = PageController(
    initialPage: 0,
  );

  void onNext() {
    if(_controller.page < 7) {
      _controller.animateToPage((_controller.page.toInt())+1, curve: Curves.easeIn,
        duration: Duration(milliseconds: 200),);
    }
  }

  void onPre() {
    if(_controller.page == 0) {
      Get.back();
      return;
    }


      _controller.animateToPage((_controller.page.toInt())-1, curve: Curves.easeIn,
        duration: Duration(milliseconds: 200),);

  }
  
  @override
  Widget build(BuildContext context) {
 
    // TODO: implement build
    return WillPopScope(
      onWillPop: () async {
        onPre();
        return;
      },
      child: Scaffold(
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
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: PageView(
                  controller: _controller,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Thumbnail of Node", style: TextStyle(
                              color: Colors.grey[300]
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          TextFiledNoIcon(
                            labelText: "Name of Node",
                            hintText: "XXXXXXX",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fee Per Transaction - percent", style: TextStyle(
                              color: Colors.grey[300]
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          TextFiledNoIcon(
                            labelText: "Fee Per Transaction - percent",
                            hintText: "XXXXXXX",
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Thumbnail of Node", style: TextStyle(
                            color: Colors.grey[300]
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: CachedNetworkImage(

                              fit: BoxFit.cover,
                              imageUrl: "http://via.placeholder.com/350x150",
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
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fee for approve ( token )", style: TextStyle(
                              color: Colors.grey[300]
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          TextFiledNoIcon(
                            labelText: "Fee for approve ( token )",
                            hintText: "XXXXXXX",
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("port", style: TextStyle(
                              color: Colors.grey[300]
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          TextFiledNoIcon(
                            labelText: "port",
                            hintText: "XXXXXXX",
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fee Per Transaction - minimum fee ( token )", style: TextStyle(
                              color: Colors.grey[300]
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          TextFiledNoIcon(
                            labelText: "Fee Per Transaction - minimum fee ( token )",
                            hintText: "XXXXXXX",
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Minimum balance of user", style: TextStyle(
                              color: Colors.grey[300]
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          TextFiledNoIcon(
                            labelText: "Minimum balance of user",
                            hintText: "XXXXXXX",
                          ),
                        ],
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fee Per Transaction - maximum fee ( token )", style: TextStyle(
                              color: Colors.grey[300]
                          ),),
                          SizedBox(
                            height: 20,
                          ),
                          TextFiledNoIcon(
                            labelText: "Fee Per Transaction - maximum fee ( token )",
                            hintText: "XXXXXXX",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonBottomBack(
                    onTap: () {
                      onPre();
                    },
                  ),
                  ButtonConfirm(
                    onTap: () {
                      onNext();
                    },
                    text: "Next",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
