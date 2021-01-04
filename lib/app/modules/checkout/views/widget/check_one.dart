import 'package:e_commerce/app/modules/checkout/controllers/checkout_controller.dart';
import 'file:///C:/Users/Hossam/e_commerce/lib/enum/delivery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckOne extends GetView<CheckoutController> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                title: const Text(
                  'Standard Delivery',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                    'Order will be delivered between 3 - 5 business days'),
                trailing: Obx(
                  () => Radio(
                    value: Delivery.StandardDelivery,
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
                  'Next Day Delivery',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                    'Place your order before 6pm and your items will be delivered the next day'),
                trailing: Obx(
                  () => Radio(
                    value: Delivery.NextDayDelivery,
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
                  'Nominated Delivery',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                    'Pick a particular date from the calendar and order will be delivered on selected date'),
                trailing: Obx(
                  () => Radio(
                    value: Delivery.NominatedDelivery,
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
      ),
    );
  }
}
