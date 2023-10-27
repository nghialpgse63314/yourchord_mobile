import 'package:flutter/material.dart';
import 'package:yourchord/screens/trending.dart';

class CollectionPage extends StatefulWidget {
  @override
  _CollectionPagePageState createState() => _CollectionPagePageState();
}

class _CollectionPagePageState extends State<CollectionPage> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("COLLECTIONs"),
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
          PopupMenuButton(
              itemBuilder: (context){
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
              },
              onSelected:(value){
                if(value == 0){
                  print("Button 1 is selected.");
                }else if(value == 1){
                  print("Button 2 is selected.");
                }else if(value == 2){
                  print("Button 3 is selected.");
                }
              }
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: TextField(
            maxLines: 999,
          ),
        ),
      ),
    );
  }
}