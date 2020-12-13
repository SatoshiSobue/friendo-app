import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';
import 'package:friendo_app/widgets/utils/icon_widget.dart';

class DrawerMenuUserTile extends StatelessWidget {
  DrawerMenuUserTile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: HexColor('#55B3D0'),
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            child: Container(color: Colors.white),
            margin: EdgeInsets.fromLTRB(13, 0, 16, 0),
          ),
          // SizedBox(width: 16),
          Column(
            children: [
              SizedBox(height: 26),
              Text(
                'kei tanaka',
                style: TextStyle(color: HexColor('#FFFFFF'), fontSize: 20),
              ),
              SizedBox(height: 2),
              Text(
                '□ 300/300',
                style: TextStyle(color: HexColor('#FFFFFF'), fontSize: 16),
              ),
              SizedBox(height: 22)
            ],
          ),
        ],
      ),
    );
  }
}
