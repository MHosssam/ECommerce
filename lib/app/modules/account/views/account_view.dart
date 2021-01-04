import 'dart:io';

import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/app/modules/account/controllers/account_controller.dart';

import 'widget/cards.dart';
import 'widget/notifications.dart';
import 'widget/order_history.dart';
import 'widget/shipping_address.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    Get.put(AccountController());
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Obx(()=> CircleAvatar(
                        radius: 80.0,
                        backgroundImage: controller.profileImageUrl.value == null
                            ? AssetImage('assets/images/clothes.jpg' ,)
                            : FileImage(File(controller.profileImageUrl.value)),
                      ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 20.0,
                        child: IconButton(
                          onPressed: () {
                            controller.getImagePro();
                          },
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'mohamed',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'mohamed@gmail.com',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07,),
              Column(
                children: [
                  _RowBody('Shipping Address' , Icons.location_on_outlined ,ShippingAddress()),
                  _RowBody('Order History' , Icons.access_time_rounded , OrderHistory()),
                  _RowBody('Cards' , Icons.credit_card_outlined , Cards()),
                  _RowBody('Notifications' , Icons.notification_important_outlined , Notifications()),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0 , vertical: 20.0),
                    child: InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.login_outlined  , color: Colors.lightGreen,) ,
                              SizedBox(width: 16.0,),
                              Text('Log Out' , style: TextStyle(fontSize: 20 ,),),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                      onTap: () {
                        Get.offAllNamed(Routes.LOGIN);
                      } ,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            ],
          ),
        ),
      ),
    );
  }
}
Widget _RowBody(String title, IconData iconData, Widget widgetData,){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0 , vertical: 30.0),
    child: InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(iconData , color: Colors.lightGreen,) ,
              SizedBox(width: 16.0,),
              Text(title , style: TextStyle(fontSize: 20 ,),),
            ],
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
      onTap: () {
        Get.to(widgetData);
      } ,
    ),
  );
}