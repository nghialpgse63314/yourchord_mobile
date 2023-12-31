import 'package:flutter/material.dart';
import 'package:yourchord/screens/orderdetail.dart';
import 'package:yourchord/screens/trending.dart';

class OrderHistoryPage extends StatefulWidget {
  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Order history'),
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
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OrderDetailPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withAlpha(100), blurRadius: 10.0),
                ]
              ),
              height: 70,
              padding: const EdgeInsets.all(8),
              child: Text('Order'),
            ),
          ),
        ],
      ),
    );
  }
}
