import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:friendo_app/models/entity/user_dialog_state.dart';
import 'package:friendo_app/widgets/dialog/user_dialog_tile.dart';
import 'package:friendo_app/widgets/utils/icon_widget.dart';
import 'package:hooks_riverpod/all.dart';

class UserDialog extends HookWidget {
  UserDialog({this.name, this.pronounce, this.birthday});
  final String name, pronounce;
  final DateTime birthday;

  @override
  Widget build(BuildContext context) {
    final updateName = useProvider(userDialogStateProvider(1)).updateName;
    final updatePronounce =
        useProvider(userDialogStateProvider(1)).updatePronounce;
    final name = useProvider(userDialogStateProvider(1).state).name;
    final pronounce = useProvider(userDialogStateProvider(1).state).pronounce;
    final _nameController = TextEditingController(text: name);
    final _pronounceController = TextEditingController(text: pronounce);
    return FlatButton(
      child: Text('show dialog'),
      onPressed: () async {
        // show dialog
        var _ = await showDialog<int>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              contentPadding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              content: Container(
                height: 360,
                width: 320,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      child: Container(color: Colors.blue),
                    ),
                    SizedBox(height: 17),
                    GestureDetector(
                      onTap: () => showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Name'),
                          content: TextFormField(
                            controller: _nameController,
                          ),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.pop(context, _nameController.text);
                              },
                            )
                          ],
                        ),
                      ).then((val) => {updateName(val)}),
                      child: UserDialogTile(title: "Name"),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      onTap: () => showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (BuildContext context) => AlertDialog(
                          title: Text('Pronounce'),
                          content: TextFormField(
                            controller: _pronounceController,
                          ),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.pop(
                                    context, _pronounceController.text);
                              },
                            )
                          ],
                        ),
                      ).then((val) => {updatePronounce(val)}),
                      child: UserDialogTile(title: "Pronounce"),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) => SimpleDialog(
                                title: Text('title'),
                              )),
                      child: UserDialogTile(
                        title: "Birth Day",
                      ),
                    ),
                    SizedBox(height: 23),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Container(
                              child: IconWidget(
                                name: "check_box_gray",
                                width: 32,
                                height: 32,
                              ),
                            ),
                            Container(
                              child: Text('32/35'),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              child: IconWidget(
                                name: "memo",
                                width: 32,
                                height: 32,
                              ),
                            ),
                            Container(
                              child: Text('12'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: <Widget>[
                FlatButton(
                  child: Text('キャンセル'),
                  textColor: Colors.black,
                  onPressed: () => Navigator.of(context).pop(0),
                ),
                FlatButton(
                  child: Text('OK'),
                  textColor: Colors.black,
                  onPressed: () => Navigator.of(context).pop(1),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
