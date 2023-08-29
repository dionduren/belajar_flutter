import 'package:flutter/material.dart';

void main() {
  runApp(MyAppTest());
}

class MyAppTest extends StatelessWidget {
  const MyAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('List Tile'),
        ),
        body: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(right: 50),
              title: Text('Dion Alamsah'),
              subtitle: Text('This is subtitle part'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
              tileColor: Colors.amber,
              onTap: () {
                return; // pindah halaman
              },
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              title: Text('Dion Alamsah'),
              subtitle: Text(
                'This is subtitle part asdhailuwhdakjbdwuiad alkghdalkd gasjlhdg awl dakhwl',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
              dense: true,
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              contentPadding: EdgeInsets.all(50),
              title: Text('Dion Alamsah'),
              subtitle: Text('This is subtitle part'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(
              color: Colors.black,
            ),
            ListTile(
              title: Text('Dion Alamsah'),
              subtitle: Text('This is subtitle part'),
              leading: CircleAvatar(),
              trailing: Text('10:00 PM'),
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
