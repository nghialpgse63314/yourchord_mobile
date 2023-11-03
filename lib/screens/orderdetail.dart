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

    TextEditingController quantity = TextEditingController();
    TextEditingController orderid = TextEditingController();
    TextEditingController beatid = TextEditingController();
    TextEditingController description = TextEditingController();
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
            // Container(
            //   decoration: BoxDecoration(color: Colors.white, boxShadow: [
            //     BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
            //   ]),
            //   height: 70,
            //   padding: const EdgeInsets.all(8),
            //   child: Text('Username'),
            // ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
              height: 160,
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('OrderID',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Flexible(
                        child: TextField(
                          controller: orderid,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                            // border: OutlineInputBorder(),
                          ),
                          style: TextStyle(
                              fontSize: 15.0, height: 2.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text('BeatID',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Flexible(
                        child: TextField(
                          controller: beatid,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                            // border: OutlineInputBorder(),
                          ),
                          style: TextStyle(
                              fontSize: 15.0, height: 2.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text('Quantity',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      Spacer(),
                      Flexible(
                        child: TextField(
                          controller: quantity,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                            // border: OutlineInputBorder(),
                          ),
                          style: TextStyle(
                              fontSize: 15.0, height: 2.0, color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
              padding: new EdgeInsets.all(7.0),
              child: new SingleChildScrollView(
                scrollDirection: Axis.vertical,
                reverse: true,
                child: new TextField(
                  controller: description,
                  keyboardType: TextInputType.multiline,
                  maxLines: null, //grow automatically
                  decoration: new InputDecoration.collapsed(
                    hintText: 'Description',
                  ),
                ),
              )
              ,
            )
          ],
        ),
      ),
    );
  }
}
