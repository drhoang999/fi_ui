import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'demo_getx_controller.dart';

class DemoGetx extends StatefulWidget {
  @override
  _DemoGetxState createState() => _DemoGetxState();
}

class _DemoGetxState extends State<DemoGetx> {
  DemoGetxController demoGetxController = new DemoGetxController();

  void refreshWithSetState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Column(
        children: [
          RaisedButton(
              child: Text("refreshWithSetState"),
              onPressed: () {
                refreshWithSetState();
              }),
          RaisedButton(
              child: Text("add list With Getx"),
              onPressed: () {
                demoGetxController.addList();
              }),
          Text("Text1"),
          Text("Text2"),
          Text("Text3"),
          Text("Text4"),
          Expanded(
            child: Obx(() =>
                ListView.builder(
                itemCount: demoGetxController.list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(demoGetxController.list[index].toString()),
                  );
                })),
          )
        ],
      ),
    );
  }
}
