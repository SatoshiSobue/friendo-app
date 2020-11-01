import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/hamburger_menu_icon.dart';

class UsersPage extends StatelessWidget {
  UsersPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          leading: HamburgerMenuIcon(color: Colors.white)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Users page',
            ),
          ],
        ),
      ),
    );
  }
}
