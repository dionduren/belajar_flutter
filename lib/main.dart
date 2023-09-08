import 'package:flutter/material.dart';
import 'package:belajar_flutter/pages/MainHome.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyAppTest());
}

class MyAppTest extends StatelessWidget {
  MyAppTest({Key? key}) : super(key: key);

  final androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: 'Inter',
      ),
      home: new MainHome(),
    );
  }
}

class buidCardAndroidVersion extends StatelessWidget {
  const buidCardAndroidVersion({
    super.key,
    required this.androidVersions,
  });

  final List<String> androidVersions;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: androidVersions.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 80,
              child: ListTile(
                title: Text(
                  androidVersions[index],
                  style:
                      const TextStyle(fontSize: 20, color: Colors.deepPurple),
                ),
                subtitle: const Text('Android Version'),
              ),
            ),
          ),
        );
      },
    );
  }
}
