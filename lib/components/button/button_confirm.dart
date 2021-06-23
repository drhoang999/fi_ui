import 'package:flutter/material.dart';

class ButtonConfirm extends StatelessWidget {
  final Function onTap;
  final String text;

  const ButtonConfirm({Key key, this.onTap, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
          height: 58,
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color(0xff343EDF),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            text?? "Next",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}