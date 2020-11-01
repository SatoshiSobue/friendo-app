import 'package:flutter/material.dart';
import 'package:friendo_app/pages/users_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UsersPage(title: 'Flutter Demo Home Page'),
    );
  }
}
