import 'package:flutter/material.dart';

void main() {
  runApp(MyAppTest());
}

class MyAppTest extends StatelessWidget {
  const MyAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Widget"),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 500,
            color: Colors.amber,
            child: Image.asset(
              "images/gambar.png",
              fit: BoxFit.cover,
            ),
            // child: Image(
            //   image: AssetImage("images/gambar.png"),
            //   fit: BoxFit.cover,
            //   // image: NetworkImage("https://picsum.photos/200/300"),
            // ),
          ),
        ),
      ),
    );
  }
}
