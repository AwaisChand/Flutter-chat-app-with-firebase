import 'package:chat_app/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget tabBar() {
  return Container(
    child: const RotatedBox(
      quarterTurns: 3,
      child:  TabBar(
        indicator: BoxDecoration(),
          labelColor: Colors.white,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelColor: Vx.gray500,

          tabs: [
        Tab(
          text: chats,
        ),
        Tab(
          text: status,
        ),
        Tab(
          text: camera,
        )
      ]),
    ),
  );
}
