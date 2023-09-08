import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Buat Tiket Helpdesk')),
      body: Column(
        children: [MyDropdown()],
      ),
    );
  }
}

class MyDropdown extends StatefulWidget {
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  List<dynamic> kategoriList = [];
  String? selectedKategori;

  @override
  void initState() {
    super.initState();
    fetchKategoriList();
  }

  fetchKategoriList() async {
    final response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/kategori-list"));

    if (response.statusCode == 200) {
      setState(() {
        kategoriList = jsonDecode(response.body);
      });
    } else {
      throw Exception('Failed to load categories');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("Select category"),
        value: selectedKategori,
        items: kategoriList.map((dynamic value) {
          return DropdownMenuItem<String>(
            value: value['id'].toString(),
            child: Text(value['nama_kategori']),
          );
        }).toList(),
        onChanged: (newValue) {
          setState(() {
            selectedKategori = newValue;
          });
        },
      ),
    );
  }
}
