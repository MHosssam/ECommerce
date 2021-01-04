import 'package:e_commerce/app/modules/home_product/controllers/home_product_controller.dart';
import 'package:e_commerce/app/modules/home_product/views/widget/item_deteles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemCategory extends StatelessWidget {
  String title;

  ItemCategory(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
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
      body: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 2,
        mainAxisSpacing: 30,
        crossAxisSpacing: 8,
        padding: EdgeInsets.symmetric(vertical: 20.0),
        children: List.generate(4, (index) {
          var controller = Get.put(HomeProductController());
          return Card(
            child: InkWell(
              onTap: () {
                Get.to(ItemBestSelling(
                  controller.BestSelling[index].image,
                  controller.BestSelling[index].title,
                  controller.BestSelling[index].price,
                  controller.BestSelling[index].des,
                ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    controller.BestSelling[index].image,
                    width: 120,
                    height: 120,
                  ),
                  Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 12.0),
                          width: double.infinity,
                          child: Text(
                            controller.BestSelling[index].title,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 12.0),
                        width: double.infinity,
                        child: Text(
                          controller.BestSelling[index].des,
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 12.0),
                        width: double.infinity,
                        child: Text(
                          controller.BestSelling[index].price,
                          style:
                              TextStyle(color: Colors.lightGreen, fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
          );
        }),
      ),
    );
  }
}
