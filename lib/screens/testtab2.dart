import 'package:flutter/material.dart';


// void main() {
//   runApp(const TestTab2());
// }

class TestTab2 extends StatelessWidget {
  const TestTab2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Text('TestTab2'),
    );
  }
}


