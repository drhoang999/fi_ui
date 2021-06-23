import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFiledNoIcon extends StatelessWidget {
  final String hintText;
  final String labelText;

  const TextFiledNoIcon({Key key, this.hintText, this.labelText}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: new InputDecoration(
        border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.white)),
        enabledBorder: const OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 1.0),
        ),
        hintText: hintText ?? 'Address of wallet',
        hintStyle: TextStyle(color: Colors.white),
        labelStyle: TextStyle(color: Colors.white),
        labelText: labelText ?? 'Address of wallet',
      ),
    );
  }
}
