import 'package:flutter/material.dart';

class HamburgerMenuIcon extends StatelessWidget {
  HamburgerMenuIcon({Key key, this.color = Colors.red}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 24, height: 6, color: color),
        SizedBox(height: 3),
        Container(width: 24, height: 6, color: color),
        SizedBox(height: 3),
        Container(width: 24, height: 6, color: color)
      ],
    );
  }
}
