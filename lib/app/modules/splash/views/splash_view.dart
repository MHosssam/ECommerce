import 'dart:async';

import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/app/modules/splash/controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3),
          ()=>Get.offNamed(Routes.LOGIN),
    );

    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
