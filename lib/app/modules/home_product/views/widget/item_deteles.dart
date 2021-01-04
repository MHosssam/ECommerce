import 'package:e_commerce/app/modules/home_product/controllers/home_product_controller.dart';
import 'package:e_commerce/app/routes/app_pages.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemBestSelling extends StatelessWidget {
  String image, title, price, des;

  ItemBestSelling(this.image, this.title, this.price, this.des);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Image.asset(image),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      iconSize: 25,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.star,
                        color: Colors.grey.shade400,
                        size: 30,
                      ),
                      iconSize: 25,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Size'),
                          Text(
                            'M  L  XL',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Container(
                      width: 150,
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Colors'),
                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.red,
                          ),
                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.blueAccent,
                          ),
                          Container(
                            width: 15,
                            height: 15,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                textAlign: TextAlign.left,
              ),
            ),
            Card(
              elevation: 3,
              margin: EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer.",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.left,
                  maxLines: 10,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('Price'),
                      Text(
                        price,
                        style: TextStyle(color: Colors.lightGreen),
                      ),
                    ],
                  ),
                  FlatButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text(
                      'ADD',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.lightGreen,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
