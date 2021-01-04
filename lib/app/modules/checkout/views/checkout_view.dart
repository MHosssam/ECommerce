import 'package:e_commerce/app/modules/checkout/views/widget/check_one.dart';
import 'package:e_commerce/app/modules/checkout/views/widget/check_thre.dart';
import 'package:e_commerce/app/modules/checkout/views/widget/check_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/app/modules/checkout/controllers/checkout_controller.dart';
import 'package:im_stepper/stepper.dart';

class CheckoutView extends GetView<CheckoutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Obx(
            () => Column(
              children: [
                IconStepper(
                  enableNextPreviousButtons: false,
                  lineLength: 130,
                  stepRadius: 15.0,
                  icons: [
                    Icon(
                      Icons.circle,
                      color: Colors.transparent,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.transparent,
                    ),
                    Icon(
                      Icons.circle,
                      color: Colors.transparent,
                    ),
                  ],
                  activeStep: controller.activeStep.value,
                  upperBound: (bound) => controller.upperBound.value = bound,
                  onStepReached: (index) {
                    controller.activeStep.value = index;
                  },
                ),
              (controller.activeStep.value == 0)
                  ? CheckOne()
                  : (controller.activeStep.value == 1)
                  ? CheckTwo()
                  : CheckThre(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0 , vertical: 8.0),
          child: Obx(
            ()=> Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                controller.previousButton(),
                controller.nextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

