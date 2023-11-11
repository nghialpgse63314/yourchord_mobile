import 'package:flutter/material.dart';

class InstrumentPage extends StatefulWidget {
  @override
  _InstrumentPageState createState() => _InstrumentPageState();
}

class _InstrumentPageState extends State<InstrumentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/trending9.png"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: const Text(
                      'Ghita',
                      style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/trending2.png"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ]),
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: const Text(
                      'Piana',
                      style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/trending10.png"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ]),
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text('Flute', style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold))),
              ),
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/trending6.png"),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withAlpha(100), blurRadius: 10.0),
                    ]),
                padding: const EdgeInsets.all(8),
                child: Center(child: const Text('Trumpets', style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold))),
              ),
            ],
          )),
    );
  }
}
