import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/drawer_menu/drawer_menu_tile.dart';
import 'package:friendo_app/widgets/hamburger_menu_icon.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

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
            DrawerMenuTile(
              title: "プレミアムにアップグレード",
              iconName: "星",
            ),
            DrawerMenuTile(
              title: "アカウント",
              iconName: "人",
            ),
            DrawerMenuTile(
              title: "一般設定",
              iconName: "歯車",
            ),
            DrawerMenuTile(
              title: "サポート",
              iconName: "はてな",
            ),
            DrawerMenuTile(
              title: "アプリについて",
              iconName: "びっくり",
            ),
            DrawerMenuTile(
              title: "サインアウト",
              iconName: "出口",
            ),
          ],
        ),
      ),
      key: _drawerKey, // assign key to Scaffold
    );
  }
}
