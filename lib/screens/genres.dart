import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

class GenresPage extends StatefulWidget {
  @override
  _GenresPageState createState() => _GenresPageState();
}

class _GenresPageState extends State<GenresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GridView.extent(
            childAspectRatio: (1 / .4),
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Jazz', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.redAccent,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Pop-rock', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('R&B', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Pop', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrange,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Blues', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Electronic', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellowAccent,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('EDM', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Rock', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('K-Pop', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Folk', style: TextStyle(fontSize: 20)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
              ),
            ],
          )),
    );
  }
}





