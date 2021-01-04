import 'package:e_commerce/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/app/modules/cart/controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    Get.put(CartController());
    return Scaffold(
      body: ListView.builder(
        itemCount: controller.items.length,
        itemBuilder: (context, index) {
          return _body(index);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          width: double.infinity,
          height: MediaQuery
              .of(context)
              .size
              .height * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'TOTAL',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    '100000',
                    style: TextStyle(color: Colors.lightGreen, fontSize: 20),
                  ),
                ],
              ),
              FlatButton(
                onPressed: () {
                  Get.toNamed(Routes.CHECKOUT);
                },
                child: Text('CheckOut',
                  style: TextStyle(color: Colors.white, fontSize: 20),),
                color: Colors.lightGreen,
              )
            ],
          ),
        ),
      ),
    );
  }
Widget _body(int index){
  final item = controller.items[index];
  var mm = 1 ;
    return Dismissible(
      key: Key(item),
      onDismissed: (direction) {
        controller.dismiss(index);
      },
      background: Container(
        color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.delete,
              color: Colors.white,
              size: 100,
            ),
            Icon(
              Icons.delete,
              color: Colors.white,
              size: 100,
            ),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
              padding: EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/iphone.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: [
                  Text(
                    'Iphone',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                  Obx(
                        ()=> Text(
                      '${controller.count.value * 12000}',
                      style:
                      TextStyle(color: Colors.lightGreen, fontSize: 20),
                    ),
                  ),
                  Card(
                    elevation: 2,
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.add_box_outlined,
                            ),
                            onPressed: () {
                              controller.increment();
                            }),
                        Obx(() => Text('${controller.count.value}')),
                        IconButton(
                            icon: Icon(
                              Icons.indeterminate_check_box_outlined,
                            ),
                            onPressed: () {
                              controller.decrement();
                            }),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}