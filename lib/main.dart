import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
part "chat_item.dart";

void main() {
  runApp(MyAppTest());
}

class MyAppTest extends StatelessWidget {
  MyAppTest({super.key});

  final faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Extract Widget'),
        ),
        body: ListView(
          children: [
            ChatItem(),
            ChatItem(),
            ChatItem(),
          ],
        ),
      ),
    );
  }
}
