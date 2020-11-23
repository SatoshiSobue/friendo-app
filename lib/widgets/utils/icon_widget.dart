import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key key, this.name, this.width = 24.0, this.height = 24.0})
      : super(key: key);
  final String name;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        child: Image.asset('assets/pngs/icon_$name.png'));
  }
}
