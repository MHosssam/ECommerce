import 'file:///C:/Users/Hossam/e_commerce/lib/enum/delivery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  Rx<Delivery> valueData = Delivery.StandardDelivery.obs;

  void SetChanges(val) {
    valueData.value = val;
  }

  final activeStep = 0.obs;
  final upperBound = 0.obs;

  /// Returns the next button.
  Widget nextButton() {
    if (activeStep.value == 2) {
      return ElevatedButton(
        onPressed: () {
          Get.defaultDialog(
            title: 'Delivery Ok',
            content: Column(
              children: [
                Text('Your order will be delivered soon '),
                FlatButton(
                  onPressed: () {
                    Get.back();
                    Get.back();
                  },
                  child: Text('OK'),
                  color: Colors.lightGreen,
                ),
              ],
            ),
            barrierDismissible: false,
          );
        },
        child: Text('Delivery'),
      );
    } else {
      return ElevatedButton(
        onPressed: () {
          if (activeStep.value < upperBound.value) {
            activeStep.value++;
          }
        },
        child: Text('NEXT'),
      );
    }
  }

  /// Returns the previous button.
  Widget previousButton() {
    return ElevatedButton(
      onPressed: () {
        if (activeStep.value > 0) {
          activeStep.value--;
        }
      },
      child: Text('BACK'),
    );
  }

  final txtStreet1 = TextEditingController();
  final txtStreet2 = TextEditingController();
  final txtCity = TextEditingController();
  final txtState = TextEditingController();
  final txtCountry = TextEditingController();
}
