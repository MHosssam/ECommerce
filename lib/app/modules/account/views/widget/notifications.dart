import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
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
            _notificationBody(),
            _notificationBody( ),
            _notificationBody( ),
            _notificationBody( ),
            _notificationBody( ),
            _notificationBody( ),
            _notificationBody( ),
          ],
        ),
      ),
    );;
  }
}
Widget _notificationBody() {
  return Card(
    elevation: 4,
    margin: EdgeInsets.only(top: 16.0 , left: 16.0 , right: 16.0),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 8.0),
              child: Text(
                'Order Name ',
                style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16.0,
                top: 8.0
              ),
              child: Text(
                'Description Description Description Description Description Description',
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0, bottom: 16.0 , top: 8.0),
              child: Text(
                '26/11/2020 , 3 pm',
                style: TextStyle(fontSize: 17 ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

