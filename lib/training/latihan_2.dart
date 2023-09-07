import 'package:flutter/material.dart';

main() {
  runApp(const MyAppTest());
}

class MyAppTest extends StatelessWidget {
  const MyAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("visibleNonVisible"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 400,
                  width: 400,
                  color: Colors.green,
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.amber,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 200,
                  width: 50,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  width: 50,
                  color: Colors.amber,
                ),
                Container(
                  height: 300,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
        // body: Stack(
        //   children: [
        //     Container(
        //       height: 400,
        //       width: 400,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 300,
        //       width: 300,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 100,
        //       color: Colors.red,
        //     ),
        //   ],
        // ),
        // body: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
        //     Container(
        //       height: 200,
        //       width: 50,
        //       color: Colors.green,
        //     ),
        //     Container(
        //       height: 50,
        //       width: 50,
        //       color: Colors.blue,
        //     ),
        //     Container(
        //       height: 100,
        //       width: 50,
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       height: 300,
        //       width: 50,
        //       color: Colors.red,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
