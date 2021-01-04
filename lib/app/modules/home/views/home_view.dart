import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/app/modules/home/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() =>
            controller.widgetOptions.elementAt(controller.currentIndex.value)),
      ),
      bottomNavigationBar: Obx(
        () => BubbleBottomBar(
          hasNotch: true,
          opacity: .2,
          currentIndex: controller.currentIndex.value,
          onTap: controller.changePage,
          elevation: 8,
          items: <BubbleBottomBarItem>[
            BubbleBottomBarItem(
                backgroundColor: Colors.lightGreen,
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.home,
                  color: Colors.lightGreen,
                ),
                title: Text("Home")),
            BubbleBottomBarItem(
                backgroundColor: Colors.lightGreen,
                icon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.lightGreen,
                ),
                title: Text("Cart")),
            BubbleBottomBarItem(
                backgroundColor: Colors.lightGreen,
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                activeIcon: Icon(
                  Icons.person,
                  color: Colors.lightGreen,
                ),
                title: Text("Account")),
          ],
        ),
      ),
    );
  }
}
