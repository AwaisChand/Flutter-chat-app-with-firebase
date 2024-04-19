import 'package:chat_app/consts/colors.dart';
import 'package:chat_app/consts/images.dart';
import 'package:chat_app/consts/strings.dart';
import 'package:chat_app/consts/utils.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget appBar(GlobalKey<ScaffoldState> key) {
  return Container(
    padding: const EdgeInsets.only(right: 12),
    height: 70,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            key.currentState?.openDrawer();
          },
          child: Container(
            height: 70,
            width: 80,
            decoration: const BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            alignment: Alignment.center,
            child: const Icon(
              settingsIcon,
              color: Colors.white,
            ),
          ),
        ),
        RichText(
            text: const TextSpan(children: [
          TextSpan(
              text: "$appname\n",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: bold,
                  fontSize: 20,
                  color: Colors.black)),
          TextSpan(
              text: "                  $connectinglives",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "lato",
                  fontSize: 13,
                  color: Vx.gray600))
        ])),
        CircleAvatar(
          backgroundColor: bgColor,
          child: Image.asset(
            icUser,
            color: Colors.white,
          ),
        )
      ],
    ),
  );
}
