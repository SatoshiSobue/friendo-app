import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:friendo_app/models/entity/todo_state.dart';
import 'package:friendo_app/widgets/utils/hex_color.dart';
import 'package:friendo_app/widgets/utils/icon_widget.dart';
import 'package:hooks_riverpod/all.dart';

class UserTile extends HookWidget {
  final String userName;
  UserTile({this.userName});

  @override
  Widget build(BuildContext context) {
    final _isFavorite = useProvider(todoStateProvider(0).state).isDone;
    return Container(
      child: Row(
        children: [
          Container(
            height: 56,
            width: 56,
            child: Container(color: Colors.blue),
            margin: EdgeInsets.fromLTRB(13, 0, 16, 0),
          ),
          Container(
            width: 128,
            child: Text(
              userName,
              style: TextStyle(color: HexColor('#4A4A4A'), fontSize: 20),
            ),
            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
          ),
          Row(
            children: [
              InkWell(
                child: Container(
                  child: IconWidget(
                    name: _isFavorite ? "star_fill" : "star",
                    width: 32,
                    height: 32,
                  ),
                  margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 16),
                  Container(
                    child: IconWidget(
                      name: "memo",
                      width: 32,
                      height: 32,
                    ),
                    margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                  ),
                  Container(
                    child: Text('12'),
                    margin: EdgeInsets.fromLTRB(0, 0, 14, 0),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 15),
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
            ],
          ),
        ],
      ),
    );
  }
}
