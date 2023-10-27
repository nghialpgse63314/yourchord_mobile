import 'package:flutter/material.dart';
import 'package:yourchord/screens/trending.dart';

class ChordResultPage extends StatefulWidget {
  @override
  _ChordResultPageState createState() => _ChordResultPageState();
}

class _ChordResultPageState extends State<ChordResultPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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

    );
  }
}
