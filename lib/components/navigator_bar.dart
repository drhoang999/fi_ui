import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 247,
      height: 62,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32.50),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff310be8),
            Color(0xff0027fe),
            Color(0xff8200ff),
            Color(0xffd703ff)
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 42,
            height: 42,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0x33ffffff),
            ),
            child:  Container(
              child: SvgPicture.asset(
                'assets/images/svg/home.svg',
                width: 20,
                height: 20,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            child: SvgPicture.asset(
              'assets/images/svg/category.svg',
              width: 20,
              height: 20,
              color: Colors.white,
            ),
          ),
          Container(
            child: SvgPicture.asset(
              'assets/images/svg/subtract.svg',
              width: 20,
              height: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
