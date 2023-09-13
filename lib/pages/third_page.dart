import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:belajar_flutter/widgets/textJudul.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Test')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            textJudul(label: "Judul Tiket"),
            SizedBox(
              height: 20,
            ),
            textJudul(label: "Detail Tiket"),
          ],
        ),
      ),
    );
  }
}
