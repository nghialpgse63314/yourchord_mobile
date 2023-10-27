import 'package:flutter/material.dart';
import 'package:yourchord/screens/trending.dart';

class OrderDetailPage extends StatefulWidget {
  @override
  _OrderDetailPageState createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Order detail'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem<int>(
                value: 0,
                child: Text("Button 1"),
              ),
              PopupMenuItem<int>(
                value: 1,
                child: Text("Button 2"),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Text("Button 3"),
              ),
            ];
          }, onSelected: (value) {
            if (value == 0) {
              print("Button 1 is selected.");
            } else if (value == 1) {
              print("Button 2 is selected.");
            } else if (value == 2) {
              print("Button 3 is selected.");
            }
          }),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
             Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black.withAlpha(100), blurRadius: 10.0),
                  ]),
                  height: 70,
                  padding: const EdgeInsets.all(8),
                  child: Text('Username'),
                ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
              height: 330,
              padding: const EdgeInsets.all(8),
              child: Text('Order'),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
              height: 60,
              padding: const EdgeInsets.all(8),
              child: Text('Order Status'),
            ),
          ],
        ),
      ),
    );
  }
}
