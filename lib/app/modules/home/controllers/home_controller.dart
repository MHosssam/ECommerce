import 'package:e_commerce/app/modules/account/views/account_view.dart';
import 'package:e_commerce/app/modules/cart/views/cart_view.dart';
import 'package:e_commerce/app/modules/home_product/views/home_product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  List<Widget> widgetOptions = <Widget>[
    HomeProductView(),
    CartView(),
    AccountView(),
  ];
}
