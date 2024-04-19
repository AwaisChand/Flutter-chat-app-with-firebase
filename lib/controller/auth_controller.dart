import 'package:chat_app/consts/firebase_const.dart';
import 'package:chat_app/consts/strings.dart';
import 'package:chat_app/view/home/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class AuthController extends GetxController {
  //text controllers
  var userNameCtrl = TextEditingController();
  var phoneNumCtrl = TextEditingController();
  var otpCtrl = List.generate(6, (index) => TextEditingController());

//  variables

  var isOtpSent = false.obs;

// auth variables

  late final PhoneVerificationCompleted phoneVerificationCompleted;
  late final PhoneVerificationFailed phoneVerificationFailed;
   late final PhoneCodeSent phoneCodeSent;
  String verifyId = '';

// otp sent function

  otpSent() async {
    phoneVerificationCompleted = (PhoneAuthCredential credential) async {
      await auth.signInWithCredential(credential);
    };
    phoneVerificationFailed = (FirebaseAuthException e) {
      if (e.code == 'invalid-phone-number') {
        print('The provided phone number is not valid.');
      }
      phoneCodeSent = (String verificationId, int? resendToken) {
        verifyId = verificationId;
      };
    };
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: "+92${phoneNumCtrl.text}",
        verificationCompleted: phoneVerificationCompleted,
        verificationFailed: phoneVerificationFailed,
        codeSent: phoneCodeSent,
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      print(e.toString());
    }
  }

  verifyOtp(context) async {
    String otp = '';

    //getting all textfield data

    for (var i = 0; i < otpCtrl.length; i++) {
      otp += otpCtrl[i].text;
    }
    try {
      PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
          verificationId: verifyId, smsCode: otp);
      final User? user =
          (await auth.signInWithCredential(phoneAuthCredential)).user;

      if (user != null) {
        //  store user into database
        DocumentReference store =
            firebaseFirestore.collection(collectionUser).doc(user.uid);
        await store.set({
          'id': user.uid,
          'name': userNameCtrl.text.toString(),
          'phone': phoneNumCtrl.text.toString(),
        });
        VxToast.show(context, msg: loggedin);
        Get.offAll(()=> const HomeScreen(), transition: Transition.downToUp);
      }
    } catch (e) {
      VxToast.show(context, msg: e.toString());

    }
  }
}
