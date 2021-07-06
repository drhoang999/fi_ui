import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../check_connect.dart';

class PickLocationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child: CarouselSlider(
        items: LIST_NODE
            .map((e) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              e.image,
              height: 100,
              width: 100,
            ),
            Text(
              e.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              e.ms,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[400]),
            ),
          ],
        ))
            .toList(),
        options: CarouselOptions(
            initialPage: 1,
            viewportFraction: 0.38,
            autoPlayCurve: Curves.easeOutSine,
            enlargeCenterPage: false,
            height: 200.0),
      ),
    );
  }
}