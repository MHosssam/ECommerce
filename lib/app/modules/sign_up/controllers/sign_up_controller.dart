import 'package:e_commerce/app/modules/home/views/home_view.dart';
import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:e_commerce/model/user.dart';
import 'package:e_commerce/service/firestore_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  //TODO: Implement SignUpController

  FirebaseAuth _auth = FirebaseAuth.instance;

  var txtPass = TextEditingController();
  var txtName = TextEditingController();
  var txtEmail = TextEditingController();

  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

  void createAccountWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(
              email: txtEmail.text, password: txtPass.text)
          .then((user) async {
        saveUser(user);
      });

      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      print(e.message);
      Get.snackbar(
        'Error login account',
        e.message,
        colorText: Colors.black,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(UserData(
      userId: user.user.uid,
      email: user.user.email,
      name: txtName.text == null ? user.user.displayName : txtName.text,
      pic: '',
    ));
  }
}
