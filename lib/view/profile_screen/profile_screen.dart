import 'package:chat_app/consts/colors.dart';
import 'package:chat_app/consts/images.dart';
import 'package:chat_app/consts/strings.dart';
import 'package:chat_app/consts/utils.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: profile.text.white.semiBold.fontFamily(bold).make(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: bgColor,
                    child: Image.asset(
                      icUser,
                      color: Colors.white,
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: bgColor,
                      radius: 15,
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
               20.heightBox,
               ListTile(
                leading: const Icon(Icons.person, color: Colors.white,),
                title: TextFormField(
                  style: const TextStyle(
                   color: Colors.white,
                    fontSize: 14
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: const Icon(Icons.edit, color: Colors.white,),
                    label: "Name".text.white.make(),
                    isDense: true
                  ),
                ),
                 subtitle: namesub.text.gray400.make(),
              ),
               ListTile(
                leading: const Icon(Icons.info, color: Colors.white,),
                title: TextFormField(
                  style: const TextStyle(
                      color: Colors.white,
                    fontSize: 14
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: const Icon(Icons.edit, color: Colors.white,),
                      label: "About".text.white.make(),
                      isDense: true
                  ),
                ),),
              ListTile(
                leading: const Icon(Icons.call, color: Colors.white,),
                title: TextFormField(
                  style: const TextStyle(
                      color: Colors.white,
                    fontSize: 14
                  ),
                  cursorColor: Colors.white,
                  readOnly: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: const Icon(Icons.edit, color: Colors.white,),
                      label: "Phone".text.white.make(),
                      isDense: true
                  ),
                ),),
            ],
          ),
        ),
      ),
    );
  }
}
