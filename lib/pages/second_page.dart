import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cascading Dropdowns')),
      body: Column(
        children: [
          ParentDropdown(),
        ],
      ),
    );
  }
}

class ParentDropdown extends StatefulWidget {
  @override
  _ParentDropdownState createState() => _ParentDropdownState();
}

class _ParentDropdownState extends State<ParentDropdown> {
  List<dynamic> parentItems = [];
  String? selectedParent;

  @override
  void initState() {
    super.initState();
    fetchParentItems();
  }

  fetchParentItems() async {
    // Fetch data from API
    final response =
        await http.get(Uri.parse("http://10.0.2.2:8000/api/kategori-list"));

    if (response.statusCode == 200) {
      setState(() {
        parentItems = jsonDecode(response.body);
      });
    } else {
      throw Exception('Failed to load parent items');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          hint: Text("Select an Category"),
          value: selectedParent,
          items: parentItems.map((dynamic value) {
            return DropdownMenuItem<String>(
              value: value['id'].toString(),
              child: Text(value['nama_kategori']),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              selectedParent = newValue;
            });
          },
        ),
        // Updated condition for rendering ChildDropdown
        selectedParent != null
            ? ChildDropdown(parentId: selectedParent!)
            : Container(),
        // if (selectedParent != null) Text(selectedParent.toString()),
      ],
    );
  }
}

class ChildDropdown extends StatefulWidget {
  final String parentId;

  ChildDropdown({required this.parentId});

  @override
  _ChildDropdownState createState() => _ChildDropdownState();
}

class _ChildDropdownState extends State<ChildDropdown> {
  List<dynamic> childItems = [];
  String? selectedChild;

  @override
  void initState() {
    super.initState();
    fetchChildItems();
  }

  fetchChildItems() async {
    // Fetch data from API based on parent ID
    final response = await http.get(Uri.parse(
        "http://10.0.2.2:8000/api/subkategori-list/${widget.parentId}"));

    if (response.statusCode == 200) {
      setState(() {
        childItems = jsonDecode(response.body);
      });
    } else {
      throw Exception('Failed to load child items');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedChild, // This is nullable now.
      items: childItems.isEmpty
          ? null // Handle empty list by making it null.
          : childItems.map((dynamic value) {
              return DropdownMenuItem<String>(
                value: value['id'].toString(),
                child: Text(value['nama_subkategori']),
              );
            }).toList(),
      hint: Text("Select an Subcategory"), // Added a hint
      onChanged: (newValue) {
        setState(() {
          selectedChild = newValue; // newValue can be null.
        });
      },
    );
  }
}
