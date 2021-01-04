import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final txtPayment = TextEditingController();
    final txtFName = TextEditingController();
    final txtLName = TextEditingController();
    final txtCardNumber = TextEditingController();
    final txtCvv = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cards',
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
            Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.0),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  'assets/images/credit.png',
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Payment Method',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                keyboardType: TextInputType.text,
                controller: txtPayment,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'First Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                keyboardType: TextInputType.text,
                controller: txtFName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                keyboardType: TextInputType.text,
                controller: txtLName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Card Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                keyboardType: TextInputType.number,
                controller: txtCardNumber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'CVV',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
                keyboardType: TextInputType.visiblePassword,
                controller: txtCvv,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: FlatButton(
            onPressed: () {},
            color: Colors.lightGreen,
            child: Text(
              'Submit',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
