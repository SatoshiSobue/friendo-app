import 'package:flutter/material.dart';
import 'package:friendo_app/pages/users_page.dart';
import 'package:friendo_app/widgets/drawer_menu/drawer_menu_tile.dart';
import 'package:friendo_app/widgets/drawer_menu/drawer_menun_user_tile.dart';
import 'package:friendo_app/widgets/hamburger_menu_icon.dart';
import 'package:friendo_app/widgets/todo_tile/todo_tile.dart';
import 'package:friendo_app/widgets/user_tile/user_tile.dart';

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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.keyboard_arrow_left_sharp),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (c) => UsersPage(title: 'Users'),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            UserTile(userName: "田中　圭"),
            TodoTile(content: "早く寝る", date: DateTime.now()),
          ],
        ),
      ),
    );
  }
}
