import 'package:get/get.dart';

class DemoGetxController extends GetxController {
  var list = RxList(["1",2]);
  void addList() {
    list.add("10");
  }
}