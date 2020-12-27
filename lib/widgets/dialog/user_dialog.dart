import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';
import 'package:friendo_app/widgets/utils/icon_widget.dart';

class UserDialog extends StatelessWidget {
  final String name, pronounce;
  final DateTime birthday;
  UserDialog({this.name, this.pronounce, this.birthday});
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name",
                            style: TextStyle(fontSize: 12),
                            textAlign: TextAlign.left),
                        SizedBox(height: 12.88),
                        Text(name,
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.left),
                        Divider(
                          height: 9.37,
                          thickness: 2,
                          color: HexColor("#4A4A4A"),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text("Name",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.left),
                    SizedBox(height: 12.88),
                    Text(pronounce,
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.left),
                    Divider(
                      height: 9.37,
                      thickness: 2,
                      color: HexColor("#4A4A4A"),
                    ),
                    SizedBox(height: 16),
                    Text("Name",
                        style: TextStyle(fontSize: 12),
                        textAlign: TextAlign.left),
                    SizedBox(height: 12.88),
                    Text(
                        '${birthday.year} / ${birthday.month.toString().padLeft(2, "0")} / ${birthday.day}',
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.left),
                    Divider(
                      height: 9.37,
                      thickness: 2,
                      color: HexColor("#4A4A4A"),
                    ),
                    SizedBox(height: 23.45),
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
