import 'package:flutter/material.dart';

void main() {
  runApp(MyAppTest());
}

class MyAppTest extends StatelessWidget {
  // const MyAppTest({super.key});

  final List<Widget> myList = [
    Container(
      height: 300,
      width: 300,
      color: Colors.red,
    ),
    const Text('Halo'),
    Container(
      height: 300,
      width: 300,
      color: Colors.green,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.blue,
    ),
    Container(
      height: 300,
      width: 300,
      color: Colors.amber,
    ),
  ];

  MyAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List View"),
        ),
        body: ListView(
            //scrollDirection: Axis.horizontal,
            children: myList),
      ),
    );
  }
}
