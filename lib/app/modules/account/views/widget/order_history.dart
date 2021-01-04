import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order History',
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
        child: Column(
          children: [
            _orderBody('T-Shirt' , '250' , 'assets/images/clothes.jpg'),
            _orderBody('Iphone' , '20000' , 'assets/images/iphone.jpg'),
            _orderBody('Watch' , '800' , 'assets/images/watch.jpg'),
            _orderBody('Shoes' , '900' , 'assets/images/shoe.png'),
          ],
        ),
      ),
    );
  }
}

Widget _orderBody(String title , String price , String image) {
  return Card(
    elevation: 4,
    margin: EdgeInsets.only(top: 16.0 , left: 16.0 , right: 16.0),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.left,
              ),
              Text(
                price,
                style: TextStyle(fontSize: 18, color: Colors.lightGreen),
                textAlign: TextAlign.left,
              ),
              FlatButton(
                onPressed: (){},
                child: Text('Delivered', style: TextStyle(color: Colors.white)),
                color: Colors.lightGreen,
              )
            ],
          ),
          Container(
            width: 100,
            height: 100,
            child: Image.asset(image,fit: BoxFit.fill,),
          ),
        ],
      ),
    ),
  );
}
