import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Icon(Icons.menu, color: Colors.black),
              SizedBox(width: 10),
              Text("Halaman Utama", selectionColor: Colors.black)
            ],
          ),
          actions: [
            Icon(Icons.settings),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.edit),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Text("Hello World!"),
              ElevatedButton(onPressed: () {}, child: Text("Click Me!"))
            ],
          ),
        ),
        // body: buidCardAndroidVersion(androidVersions: androidVersions),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: () {},
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.mark_email_unread), label: 'Messages'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
      ),
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
