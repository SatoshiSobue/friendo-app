import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  UsersPage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
      ),
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
