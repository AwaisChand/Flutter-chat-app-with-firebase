import 'package:chat_app/view/home/components/chat_components.dart';
import 'package:chat_app/view/home/components/status_component.dart';
import 'package:flutter/material.dart';

Widget tabBarView() {
  return Expanded(
    child: Container(
      decoration: const  BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))
      ),
      child: TabBarView(children: [
        Container(
          decoration: const  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12)),

          ),
          child: chatComponent(),
        ),
        Container(
          decoration: const  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))
          ),
          child: statusComponent(),
        ),
        Container(
          decoration: const  BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))
          ),
        ),
      ]),
    ),
  );
}
