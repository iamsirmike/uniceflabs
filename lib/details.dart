import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String name;
  final String imagesrc;
  final int price;

  Details({this.name, this.imagesrc, this.price});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        Text(imagesrc),
        Text(
          price.toString(),
        ),
      ],
    );
  }
}
