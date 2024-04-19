
import 'package:chat_app/consts/colors.dart';
import 'package:chat_app/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: const [
          Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(22))),
        child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  children: [
                    Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                      TextSpan(
                          text: "Username\n",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      TextSpan(
                          text: "Last seen",
                          style: TextStyle(fontSize: 12, color: Colors.green))
                    ]))),
                    const CircleAvatar(
                      backgroundColor: Vx.green800,
                      radius: 15,
                      child: Icon(
                        Icons.video_call_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    10.widthBox,
                    const CircleAvatar(
                      backgroundColor: Vx.green800,
                      radius: 15,
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              20.heightBox,
               Expanded(
                 child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Directionality(
                          textDirection:
                              index.isEven ? TextDirection.rtl : TextDirection.ltr,
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      index.isEven ? Colors.black : Vx.green800,
                                  child: Image.asset(
                                    icUser,
                                    color: Colors.white,
                                  ),
                                ),
                                20.widthBox,
                                Expanded(
                                    child: Directionality(
                                      textDirection: TextDirection.ltr,
                                      child: Container(
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                        color: index.isEven ? bgColor : Vx.green800,
                                        borderRadius: BorderRadius.circular(12)),
                                  child: "Hello, this is a message text here.."
                                            .text
                                            .white
                                            .make(),
                                ),
                                    )),
                                10.widthBox,
                                Directionality(
                                  textDirection: TextDirection.ltr,
                                    child: "11:00 AM".text.gray300.make())
                                 ],
                            ),
                          ),
                        );
                      }),
               ),
              10.heightBox,
               Row(
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const TextField(
                        maxLines: 1,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14
                        ),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.emoji_emotions_rounded, color: Colors.white,),
                          suffixIcon: Icon(Icons.attachment_rounded, color: Colors.grey,),
                          border: InputBorder.none,
                          hintText: "Type your message...",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14
                          )
                        ),
                      ),
                    ),
                  ),
                  20.widthBox,
                  const CircleAvatar(

                    backgroundColor: Vx.green800,
                    child: Icon(Icons.send, color: Colors.white,),
                  )
                ],
              )

            ],
          ),

      ),
    );
  }
}
