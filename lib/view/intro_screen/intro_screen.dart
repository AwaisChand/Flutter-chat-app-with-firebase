import 'package:chat_app/consts/colors.dart';
import 'package:chat_app/consts/images.dart';
import 'package:chat_app/consts/strings.dart';
import 'package:chat_app/consts/utils.dart';
import 'package:chat_app/view/intro_screen/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        logo,
                        width: 90,
                      ),
                      const Text(
                        appname,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: bold),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                          spacing: 10.0,
                          children:
                              List.generate(listOfFeatures.length, (index) {
                            return Chip(
                              labelPadding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 3),
                              backgroundColor: Colors.transparent,
                              label: listOfFeatures[index]
                                  .text
                                  .semiBold
                                  .gray600
                                  .make(),
                              side: BorderSide(color: Colors.grey.shade400),
                            );
                          })),
                      20.heightBox,
                      const Text(
                        slogan,
                        style: TextStyle(
                            fontFamily: bold,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: context.screenWidth - 80,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: bgColor,
                                  shape: const StadiumBorder(),
                                  padding: const EdgeInsets.all(16)),
                              onPressed: () {
                                Get.to(() => const VerificationScreen(),
                                    transition: Transition.downToUp);
                              },
                              child: buttonText.text.semiBold.size(16).make())),
                      10.heightBox,
                      poweredby.text.size(10).semiBold.gray600.make()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
