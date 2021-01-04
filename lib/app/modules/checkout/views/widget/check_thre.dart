import 'package:e_commerce/app/modules/checkout/controllers/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckThre extends GetView<CheckoutController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Shipping Address',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(left:16.0 , right: 16.0 ,top: 16.0),
            child: Text(
              '${controller.txtStreet1.text} , ${controller.txtStreet2.text} , ${controller.txtCity.text} , ${controller.txtState.text} , ${controller.txtCountry.text} .',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16.0),
            child: InkWell(
              onTap: (){
                if (controller.activeStep.value > 0) {
                  controller.activeStep.value--;
                }
              },
              child: Text(
                'Changes',
                style: TextStyle(color: Colors.lightGreen , fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
