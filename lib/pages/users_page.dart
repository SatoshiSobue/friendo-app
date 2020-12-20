import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/drawer_menu/drawer_menu_tile.dart';
import 'package:friendo_app/widgets/drawer_menu/drawer_menun_user_tile.dart';
import 'package:friendo_app/widgets/hamburger_menu_icon.dart';
import 'package:friendo_app/widgets/todo_tile/todo_tile.dart';
import 'package:friendo_app/widgets/user_tile/user_tile.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class UsersPage extends StatelessWidget {
  UsersPage({Key key, this.title}) : super(key: key);
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
          leading: GestureDetector(
            onTap: () {
              _drawerKey.currentState.openDrawer();
            },
            child: HamburgerMenuIcon(color: Colors.white),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerMenuUserTile(),
              DrawerMenuTile(
                title: "プレミアムにアップグレード",
                iconName: "star",
              ),
              DrawerMenuTile(
                title: "アカウント",
                iconName: "account",
              ),
              DrawerMenuTile(
                title: "一般設定",
                iconName: "settings",
              ),
              DrawerMenuTile(
                title: "サポート",
                iconName: "question",
              ),
              DrawerMenuTile(
                title: "アプリについて",
                iconName: "info",
              ),
              // DrawerMenuTile(
              //   title: "サインアウト",
              //   iconName: "出口",
              // ),
            ],
          ),
        ),
        key: _drawerKey, // assign key to Scaffold
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
