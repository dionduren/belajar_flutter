import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyAppTest());
}

class MyAppTest extends StatelessWidget {
  // MyAppTest({super.key});

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
            ChatItem(
                imageUrl: "https://picsum.photos/id/1",
                title: 'Dion Alamsah',
                subtitle: 'ini subtitle'),
            ChatItem(
                imageUrl: "https://picsum.photos/id/1",
                title: 'Dion Alamsah',
                subtitle: 'ini subtitle'),
            ChatItem(
                imageUrl: "https://picsum.photos/id/1",
                title: 'Dion Alamsah',
                subtitle: 'ini subtitle'),
          ],
        ),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  ChatItem({this.imageUrl = '', this.title = '', this.subtitle = ''});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: const Text('10.00 PM'),
    );
  }
}
