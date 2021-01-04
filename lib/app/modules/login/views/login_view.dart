import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:e_commerce/app/modules/login/controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 3,
                margin: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Welcome,',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Sign in to Continue',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        FlatButton(
                          onPressed: () {
                            Get.toNamed(Routes.SIGN_UP);
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.lightGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                            )),
                        keyboardType: TextInputType.emailAddress,
                        controller: controller.txtEmail,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        controller: controller.txtPass,
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.all(8.0),
                        width: double.infinity,
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      onTap: (){},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                        minWidth: double.infinity,
                        onPressed: () {
                          controller.signInWithEmailAndPassword();
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        color: Colors.lightGreen,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                  ],
                ),
              ),
              // Text(
              //   '-OR-',
              //   style: TextStyle(fontSize: 25),
              // ),
              // Column(
              //   children: [
              //     InkWell(
              //       child: Card(
              //         elevation: 3,
              //         margin: EdgeInsets.all(12.0),
              //         child: Container(
              //           padding: EdgeInsets.all(16.0),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceAround,
              //             children: [
              //               SvgPicture.asset(
              //                 'assets/svg/facebook.svg',
              //                 width: 20,
              //                 height: 20,
              //               ),
              //               Text(
              //                 'Sign in with Facebook',
              //                 style: TextStyle(fontSize: 18),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       onTap: () {
              //         controller.facebookSignInMethod();
              //       },
              //     ),
              //     InkWell(
              //       child: Card(
              //         elevation: 3,
              //         margin: EdgeInsets.all(12.0),
              //         child: Container(
              //           padding: EdgeInsets.all(16.0),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceAround,
              //             children: [
              //               SvgPicture.asset(
              //                 'assets/svg/google.svg',
              //                 width: 20,
              //                 height: 20,
              //               ),
              //               Text(
              //                 'Sign in with Google',
              //                 style: TextStyle(fontSize: 18),
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       onTap: () {
              //         controller.googleSignInMethod();
              //       },
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
