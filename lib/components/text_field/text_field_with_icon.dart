import 'package:flutter/material.dart';

class TextFieldWithIcon extends StatelessWidget {

  final String hintText;
  final String labelText;
  final TextEditingController textEditingController;
  final Icon icon;

  const TextFieldWithIcon({Key key, this.hintText, this.labelText, this.textEditingController, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 70,
      child: TextFormField(
        controller: textEditingController,
        cursorColor: Theme.of(context).cursorColor,
        maxLength: 20,
        decoration: InputDecoration(
          icon: icon,
          labelText: labelText ?? '',
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          hintText: hintText ?? '',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}