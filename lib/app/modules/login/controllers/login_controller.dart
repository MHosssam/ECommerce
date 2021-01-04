
import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:e_commerce/model/user.dart';
import 'package:e_commerce/service/firestore_user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {


  //GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  //FacebookLogin _facebookLogin = FacebookLogin();

  var txtEmail = TextEditingController();
  var txtPass = TextEditingController();
  String name ;
  Rx<User> _user = Rx<User>();

  String get user => _user.value?.email;

  @override
  void onInit() {
    super.onInit();
    _user.bindStream(_auth.authStateChanges());

    if(kDebugMode){
      txtEmail.text='mohamedhossam@gmail.com';
      txtPass.text ='123456789';
    }
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  void signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(email: txtEmail.text, password: txtPass.text);
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


  // void googleSignInMethod() async {
  //   final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
  //   print(googleUser);
  //   GoogleSignInAuthentication googleSignInAuthentication =
  //   await googleUser.authentication;
  //
  //   final AuthCredential credential = GoogleAuthProvider.credential(
  //     idToken: googleSignInAuthentication.idToken,
  //     accessToken: googleSignInAuthentication.accessToken,
  //   );
  //
  //   await _auth.signInWithCredential(credential).then((user) {
  //     saveUser(user);
  //     Get.offAllNamed(Routes.HOME);
  //   });
  // }
  //
  // void facebookSignInMethod() async {
  //   FacebookLoginResult result = await _facebookLogin.logIn(['email']);
  //
  //   final accessToken = result.accessToken.token;
  //
  //   if (result.status == FacebookLoginStatus.loggedIn) {
  //     final faceCredential = FacebookAuthProvider.credential(accessToken);
  //
  //     await _auth.signInWithCredential(faceCredential).then((user) async {
  //       saveUser(user);
  //       Get.offAllNamed(Routes.HOME);
  //     });
  //   }
  // }
  //
  // void saveUser(UserCredential user) async {
  //   await FireStoreUser().addUserToFireStore(
  //       UserData(
  //     userId: user.user.uid,
  //     email: user.user.email,
  //     name: name == null ? user.user.displayName : name,
  //     pic: '',
  //   ));
  // }

}
