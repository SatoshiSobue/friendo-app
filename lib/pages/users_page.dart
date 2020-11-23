import 'package:flutter/material.dart';
import 'package:friendo_app/widgets/hamburger_menu_icon.dart';

GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class UsersPage extends StatelessWidget {
  UsersPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(44),
        child: AppBar(
          leading: Container(),
          elevation: 0,
          flexibleSpace: SafeArea(
            child: Row(
              children: [
                const Center(
                  child: Text(
                    'Users',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // appBar: AppBar(
      //     title: Text(
      //       title,
      //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      //     ),
      //     leading: GestureDetector(
      //         onTap: () => () {
      //               print(1);
      //               _drawerKey.currentState.openDrawer();
      //             },
      //         child: HamburgerMenuIcon(color: Colors.white))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => () {
                      print(1);
                      _drawerKey.currentState.openDrawer();
                    },
                child: Container(
                  height: 40,
                  width: 40,
                  color: Colors.red,
                )),
            Text(
              'Users page',
            ),
          ],
        ),
      ),
      drawer: Drawer(),
      key: _drawerKey, // assign key to Scaffold
    );
  }
}
