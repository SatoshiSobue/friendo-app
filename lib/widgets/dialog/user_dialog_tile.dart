import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:friendo_app/models/entity/user_dialog_state.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';
import 'package:hooks_riverpod/all.dart';

class UserDialogTile extends HookWidget {
  final String title;
  UserDialogTile({this.title});
  // Function updateContent=(val)=>{setState(() => content = val)}
  @override
  Widget build(BuildContext context) {
    String content;
    switch (title) {
      case 'Name':
        content = useProvider(userDialogStateProvider(1).state).name;
        break;
      case 'Pronounce':
        content = useProvider(userDialogStateProvider(1).state).pronounce;
        break;
      case 'Birth Day':
        content = useProvider(userDialogStateProvider(1).state).birthDay;
        break;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(fontSize: 12), textAlign: TextAlign.left),
        SizedBox(height: 13),
        Text(content,
            style: TextStyle(fontSize: 16), textAlign: TextAlign.left),
        Divider(
          height: 9,
          thickness: 2,
          color: HexColor("#4A4A4A"),
        ),
      ],
    );
  }
}
