import 'package:chat_app/consts/colors.dart';
import 'package:chat_app/consts/images.dart';
import 'package:chat_app/consts/strings.dart';
import 'package:chat_app/view/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

Widget drawer() {
  return Drawer(
    backgroundColor: bgColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.horizontal(right: Radius.circular(25)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        children: [
          ListTile(
            onTap: (){
              Get.back();
            },
            leading: Icon(
              backIcon,
              color: Colors.white,
            ),
            title: setting.text.white.make(),
          ),
          20.heightBox,
          CircleAvatar(
            radius: 35,
            backgroundColor: bgColor,
            child: Image.asset(
              icUser,
              color: Colors.white,
            ),
          ),
          10.heightBox,
          "Username".text.white.size(16).make(),
          20.heightBox,
          ListView(
            shrinkWrap: true,
            children: List.generate(drawerIconsList.length, (index) {
              return ListTile(
                onTap: (){
                  switch(index){
                    case 0 :
                      Get.to(()=> const ProfileScreen());
                      break;
                    default:
                  }
                },
                leading: Icon(
                  drawerIconsList[index],
                  color: Colors.white,
                ),
                title: drawerListTiles[index].text.white.make(),
              );
            }),
          ),
          10.heightBox,
          const Divider(
            color: Vx.green400,
            height: 1,
          ),
          10.heightBox,
           ListTile(
            leading: Icon(inviteIcon, color: Colors.white,),
             title: invite.text.white.make(),
          ),
          const Spacer(),
          ListTile(
            leading: Icon(logoutIcon, color: Colors.white,),
            title: logout.text.white.make(),
          )
        ],
      ),
    ),
  );
}
