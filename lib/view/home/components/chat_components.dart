import 'package:chat_app/consts/colors.dart';
import 'package:chat_app/consts/images.dart';
import 'package:chat_app/view/chat_screen/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

Widget chatComponent() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Get.to(() => const ChatScreen(), transition: Transition.downToUp);
            },
            leading: CircleAvatar(
                backgroundColor: bgColor,
                radius: 25,
                child: Image.asset(
                  icUser,
                  color: Colors.white,
                )),
            title: "Dummy Text".text.size(16).semiBold.make(),
            subtitle: "Message here...".text.size(12).make(),
            trailing: "Last seen".text.gray400.make(),
          );
        }),
  );
}
