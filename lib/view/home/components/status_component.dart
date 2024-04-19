import 'package:chat_app/consts/colors.dart';
import 'package:chat_app/consts/images.dart';
import 'package:chat_app/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget statusComponent() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: Vx.green600,
              child: Image.asset(
                icUser,
                color: Colors.white,
              ),
            ),
            title: "My status".text.black.fontWeight(FontWeight.bold).make(),
          subtitle: "Tap to add status updates".text.gray400.make(),

        ),
        20.heightBox,
        recentupdated.text.black.fontWeight(FontWeight.bold).make(),
        20.heightBox,
        Expanded(
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Vx.green800, width: 3)
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Vx.randomColor,
                        child: Image.asset(
                          icUser,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: "Username"
                        .text
                        .black
                        .size(15)
                        .fontWeight(FontWeight.bold)
                        .make(),
                    subtitle: "Today 8:40 PM".text.gray600.make(),
                  ),
                );
              }),
        )
      ],
    ),
  );
}
