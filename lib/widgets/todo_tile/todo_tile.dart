import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';

class TodoTile extends StatefulWidget {
  final String content;
  final DateTime date;
  TodoTile({this.content, this.date});
  @override
  TodoState createState() => TodoState();
}

class TodoState extends State<TodoTile> {
  bool _isDone = false;

  void toggleIsDone() {
    _isDone = !_isDone;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => toggleIsDone(),
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: _isDone
                          ? AssetImage('assets/pngs/check_white.png')
                          : AssetImage('assets/pngs/account.png'),
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(color: HexColor('4A4A4A'), width: 1.0),
                    borderRadius: BorderRadius.circular(12),
                    color: HexColor('4A4A4A'),
                  ),
                  margin: EdgeInsets.fromLTRB(22, 0, 26, 0),
                ),
                Container(
                  height: 46,
                  child: Center(
                    child: Text(
                      widget.content,
                      style:
                          TextStyle(color: HexColor('#4A4A4A'), fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 20,
              child: Text(
                '${widget.date.year}年${widget.date.month}月${widget.date.day}日',
                style: TextStyle(color: HexColor('#000000'), fontSize: 14),
              ),
              margin: EdgeInsets.fromLTRB(0, 22, 11, 18),
            ),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: HexColor('E2E2E2'), width: 1),
        ),
      ),
    );
  }
}
