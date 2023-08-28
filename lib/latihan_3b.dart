import 'package:flutter/material.dart';

void main() {
  runApp(MyAppTest());
}

class MyAppTest extends StatelessWidget {
  // const MyAppTest({super.key});
  final List<Color> myColor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.amber
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.black,
              );
              // return Container(
              //   height: 50,
              //   color: Colors.grey,
              // );
            },
            itemCount: myColor.length,
            itemBuilder: (context, index) {
              return Container(
                height: 300,
                width: 300,
                color: myColor[index],
              );
            }),
      ),
    );
  }
}
