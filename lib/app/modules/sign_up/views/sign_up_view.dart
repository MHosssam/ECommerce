
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'package:e_commerce/app/modules/sign_up/controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            elevation: 3,
            margin: EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        )),
                    keyboardType: TextInputType.text,
                    controller: controller.txtName,
                  ),
                ),
                SizedBox(
                  height: 25,
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
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FlatButton(
                    minWidth: double.infinity,
                    onPressed: () {
                      controller.createAccountWithEmailAndPassword();
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Colors.lightGreen,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
  