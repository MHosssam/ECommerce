import 'package:e_commerce/app/modules/home_product/views/widget/item_category.dart';
import 'package:e_commerce/app/modules/home_product/views/widget/item_deteles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_commerce/app/modules/home_product/controllers/home_product_controller.dart';

class HomeProductView extends GetView<HomeProductController> {
  @override
  Widget build(BuildContext context) {
    Get.put(HomeProductController());
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Categories',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      padding: EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){
                          Get.to(ItemCategory(controller.Categories[index].title));
                        },
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                controller.Categories[index].image,
                                width: 50,
                                height: 50,
                              ),
                              Text(controller.Categories[index].title),
                            ],
                          ),
                          elevation: 4,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Best Selling',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(12.0),
                height: MediaQuery.of(context).size.height * 0.4,
                child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      padding: EdgeInsets.all(5.0),
                      child: InkWell(
                        onTap: (){
                          Get.to(ItemBestSelling(controller.BestSelling[index].image ,controller.BestSelling[index].title ,controller.BestSelling[index].price,controller.BestSelling[index].des ));
                        },
                        child: Card(
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
                                      padding: EdgeInsets.only(left:12.0),
                                      width: double.infinity,
                                      child: Text(
                                        controller.BestSelling[index].title,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                      )),
                                  Container(
                                    padding: EdgeInsets.only(left:12.0),
                                    width: double.infinity,
                                    child: Text(
                                      controller.BestSelling[index].des,
                                      style: TextStyle(color: Colors.grey,fontSize: 20),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left:12.0),
                                    width: double.infinity,
                                    child: Text(
                                      controller.BestSelling[index].price,
                                      style: TextStyle(color: Colors.lightGreen,fontSize: 20),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          elevation: 4,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
