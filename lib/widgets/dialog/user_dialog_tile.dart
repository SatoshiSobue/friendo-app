import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';

class UserDialogTile extends StatefulWidget {
  final String title, content;
  UserDialogTile({this.title, this.content, Key key}) : super(key: key);
  @override
  UserDialogTileState createState() => UserDialogTileState(title, content);
}

class UserDialogTileState extends State<UserDialogTile> {
  final String title;
  String content;
  UserDialogTileState(this.title, this.content);
  // Function updateContent=(val)=>{setState(() => content = val)}
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 12), textAlign: TextAlign.left),
        SizedBox(height: 13),
        Text(content,
            style: TextStyle(fontSize: 16), textAlign: TextAlign.left),
        Divider(
          height: 9,
          thickness: 2,
          color: HexColor("#4A4A4A"),
        ),
      ],
    );
  }
}
