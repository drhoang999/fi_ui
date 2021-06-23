import 'package:flutter/material.dart';

class ButtonBottomBack extends StatelessWidget {
  final Function onTap;

  const ButtonBottomBack({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) onTap();
      },
      child: Container(
        width: 59,
        height: 59,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 59,
              height: 59,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Color(0xff3dd598),
                  width: 1,
                ),
              ),
              child: Icon(
                Icons.west_rounded,
                color: Color(0xff3DD598),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
