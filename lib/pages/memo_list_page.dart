import 'package:flutter/material.dart';
// import 'package:friendo_app/widgets/user_info/user_property.dart';

// GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

class MemoListPage extends StatelessWidget {
  MemoListPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // UserProperty(propertyName: "Name"),
          ],
        ),
      ),
    );
  }
}
