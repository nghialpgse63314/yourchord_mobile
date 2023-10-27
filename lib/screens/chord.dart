import 'package:flutter/material.dart';
import 'package:yourchord/screens/trending.dart';

import 'chordresult.dart';

class ChordPage extends StatefulWidget {
  @override
  _ChordPagePageState createState() => _ChordPagePageState();
}

class _ChordPagePageState extends State<ChordPage> {
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
      body: ListView(
        children: <Widget>[
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChordResultPage()));
              },
              child: Container(
                height: 50,
                // color: Colors.orange[600],
                child: const Center(child: Text('C,G,Am,Em,F')),
              ),
            ),
          ),
          Card(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChordResultPage()));
              },
              child: Container(
                height: 50,
                // color: Colors.red[500],
                child: const Center(child: Text('Am,F,C,G')),
              ),
            ),
          ),
          Card(
            child: Container(
              height: 50,
              // color: Colors.blue[500],
              child: const Center(child: Text('G,Em,C,D')),
            ),
          ),
          Card(
            child: Container(
              height: 50,
              // color: Colors.blue[500],
              child: const Center(child: Text('D,Bm,G,A')),
            ),
          ),
          Card(
            child: Container(
              height: 50,
              // color: Colors.blue[500],
              child: const Center(child: Text('C,Am,Dm,G')),
            ),
          ),
          Card(
            child: Container(
              height: 50,
              // color: Colors.blue[500],
              child: const Center(child: Text('Am,Dm,E')),
            ),
          ),
        ],
      ),
    );
  }
}
