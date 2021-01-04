import 'package:e_commerce/app/modules/account/controllers/account_controller.dart';
import 'package:e_commerce/enum/address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShippingAddress extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    Get.put(AccountController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Shipping Address',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: const Text(
                'Home Address',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                  '21, Alex Davidson Avenue, Opposite Omegatron, Vicent Smith Quarters, Victoria Island, Lagos, Nigeria'),
              trailing: Obx(
                () => Radio(
                  value: Address.home,
                  groupValue: controller.valueData.value,
                  onChanged: (value) {
                    controller.SetChanges(value);
                  },
                  activeColor: Colors.lightGreen,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListTile(
              title: const Text(
                'Work Address',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                  '19, Martins Crescent, Bank of Nigeria, Abuja, Nigeria'),
              trailing: Obx(
                () => Radio(
                  value: Address.work,
                  groupValue: controller.valueData.value,
                  onChanged: (value) {
                    controller.SetChanges(value);
                  },
                  activeColor: Colors.lightGreen,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: FlatButton(
          color: Colors.lightGreen,
          onPressed: () {
            Get.back();
          },
          child: Text('Next' , style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
