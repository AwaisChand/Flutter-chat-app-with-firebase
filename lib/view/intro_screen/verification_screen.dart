import 'package:chat_app/consts/colors.dart';
import 'package:chat_app/consts/strings.dart';
import 'package:chat_app/consts/utils.dart';
import 'package:chat_app/controller/auth_controller.dart';
import 'package:chat_app/view/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(AuthController());
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: letsconnect.text.black
              .fontWeight(FontWeight.bold)
              .fontFamily(bold)
              .make(),
          centerTitle: true,
        ),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              TextFormField(
                controller: controller.userNameCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Vx.gray400,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Vx.gray400,
                        )),
                    labelText: "Username",
                    hintText: "eg. Mr",
                    prefixIcon: const Icon(Icons.phone_android_outlined, color: Vx.gray600,),
                    labelStyle: const TextStyle(
                        color: Vx.gray600, fontWeight: FontWeight.bold)),
              ),
              10.heightBox,
              TextFormField(
                controller: controller.phoneNumCtrl,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Vx.gray400,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(
                          color: Vx.gray400,
                        )),
                    labelText: "Phone Number",
                    prefixText: "+92",
                    hintText: "eg. 123456789",
                    prefixIcon: const Icon(Icons.phone_android_outlined, color: Vx.gray600,),
                    labelStyle: const TextStyle(
                        color: Vx.gray600, fontWeight: FontWeight.bold)),
              ),
              10.heightBox,
              otp.text.semiBold.size(16).make(),
              // Obx(()=>
              //    Visibility(
              //      visible: controller.isOtpSent.value,
              //      child: SizedBox(
              //       height: 80,
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: List.generate(6, (index) =>  SizedBox(
              //           width: 52,
              //           child: TextField(
              //             onChanged: (value){
              //               if(value.length==1 && index<=5){
              //                 FocusScope.of(context).nextFocus();
              //               }else if(value.isEmpty&&index>0){
              //                 FocusScope.of(context).previousFocus();
              //               }
              //             },
              //             controller: controller.otpCtrl[index],
              //             cursorColor: Vx.green800,
              //             textAlign: TextAlign.center,
              //             style: const TextStyle(
              //               fontWeight: FontWeight.bold,
              //               color: Vx.green800,
              //             ),
              //             decoration: InputDecoration(
              //               border: OutlineInputBorder(
              //                 borderRadius: BorderRadius.circular(12),
              //                 borderSide: const BorderSide(color: bgColor)
              //               ),
              //               focusedBorder: OutlineInputBorder(
              //                   borderRadius: BorderRadius.circular(12),
              //                   borderSide: const BorderSide(color: bgColor)
              //               ),
              //               hintText: '.',
              //             ),
              //           ),
              //         )),
              //       ),
              //   ),
              //    ),
              // ),

              const Spacer(),
              SizedBox(
                  width: context.screenWidth - 80,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: bgColor,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.all(16)),
                      onPressed: () async {

                        // if(controller.isOtpSent.value==false){
                        //   controller.isOtpSent.value = true;
                        //     await controller.otpSent();
                        // }else{
                        //   await controller.verifyOtp(context);
                        // }
                        Get.to(() => const HomeScreen(),
                            transition: Transition.downToUp);
                      },
                      child: continueText.text.semiBold.size(16).make())),
              30.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
