import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:friendo_app/widgets/dialog/user_dialog_tile.dart';
import 'package:friendo_app/widgets/utils/icon_widget.dart';

class UserDialog extends HookWidget {
  UserDialog({this.name, this.pronounce, this.birthday});
  final String name, pronounce;
  final DateTime birthday;
  TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
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
                          title: Text('title'),
                          content: TextFormField(
                            controller: _textEditingController,
                          ),
                          actions: <Widget>[
                            FlatButton(
                              child: Text("OK"),
                              onPressed: () {
                                Navigator.pop(
                                    context, _textEditingController.text);
                              },
                            )
                          ],
                        ),
                      ).then((val) {}),
                      child: UserDialogTile(title: "Name", content: name),
                    ),
                    SizedBox(height: 16),
                    GestureDetector(
                      onTap: () => showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) => SimpleDialog(
                                title: Text('title'),
                                children: [],
                              )),
                      child: UserDialogTile(title: "Name", content: pronounce),
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
                        content:
                            '${birthday.year} / ${birthday.month.toString().padLeft(2, "0")} / ${birthday.day}',
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
