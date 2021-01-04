import 'package:e_commerce/app/modules/checkout/controllers/checkout_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckTwo extends GetView<CheckoutController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal:16.0 , vertical: 20.0),
            child: Text(
              'Billing address is the same as delivery address',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Street1',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              keyboardType: TextInputType.text,
              controller: controller.txtStreet1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Street2',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              keyboardType: TextInputType.text,
              controller: controller.txtStreet2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'City',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              keyboardType: TextInputType.text,
              controller: controller.txtCity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'State',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              keyboardType: TextInputType.text,
              controller: controller.txtState,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Country',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              keyboardType: TextInputType.text,
              controller: controller.txtCountry,
            ),
          ),
        ],
      ),
    );
  }
}
