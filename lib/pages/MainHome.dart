import 'package:flutter/material.dart';
import 'package:belajar_flutter/pages/first_page.dart';
import 'package:belajar_flutter/pages/second_page.dart';

class MainHome extends StatelessWidget {
  const MainHome({
    super.key,
  });

  final nama_lengkap = "Dion Alamsah";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Selamat Datang"),
            Text(nama_lengkap),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FirstPage()),
                  );
                },
                child: Text("Buat Tiket Baru"),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
                child: Text("Buat Tiket Baru - Test 2"),
              ),
            )
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
    );
  }
}
