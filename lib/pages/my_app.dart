import 'package:flutter/material.dart';
import 'package:friendo_app/pages/users_page.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: HexColor('55B3D0'),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: UsersPage(title: 'Users'),
    );
  }
}
