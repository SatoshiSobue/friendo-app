import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';
import 'package:friendo_app/widgets/utils/icon_widget.dart';

class UserTile extends StatelessWidget {
  UserTile({Key key, this.userName}) : super(key: key);
  final String userName;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            child: Container(color: Colors.blue),
            margin: EdgeInsets.fromLTRB(13, 0, 16, 0),
          ),
          Container(
            width: 128,
            child: Text(
              userName,
              style: TextStyle(color: HexColor('#4A4A4A'), fontSize: 20),
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
          ),
          Row(
            children: [
              IconWidget(
                name: "star",
                width: 32,
                height: 32,
              ),
              IconWidget(
                name: "memo",
                width: 32,
                height: 32,
              ),
              IconWidget(
                name: "check_box_gray",
                width: 32,
                height: 32,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
