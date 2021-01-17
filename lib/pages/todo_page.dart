import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/todo_tile/todo_tile.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';

class TodoPage extends StatelessWidget {
  TodoPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 48,
                  margin: EdgeInsets.fromLTRB(25, 22, 0, 0),
                  child: Text(
                    '35件のTodo',
                    style: TextStyle(color: HexColor('#4A4A4A'), fontSize: 20),
                  ),
                ),
                Container(
                  height: 56,
                  width: 56,
                  child: Container(color: Colors.blue),
                  margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                ),
              ],
            ),
            TodoTile(content: "早く寝る", date: DateTime.now()),
          ],
        ),
      ),
    );
  }
}
