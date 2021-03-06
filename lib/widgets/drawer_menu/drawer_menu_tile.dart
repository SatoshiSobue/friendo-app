import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';
import 'package:friendo_app/widgets/utils/icon_widget.dart';

class DrawerMenuTile extends StatelessWidget {
  DrawerMenuTile({Key key, this.title, this.iconName}) : super(key: key);
  final String title, iconName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: HexColor("E2E2E2"), width: 2))),
      child: Row(
        children: [
          Container(
            child: IconWidget(name: iconName),
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          ),
          Container(
            child: Text(title),
          )
        ],
      ),
    );
  }
}
