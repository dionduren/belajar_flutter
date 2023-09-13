import 'package:flutter/material.dart';

class textJudul extends StatefulWidget {
  final String label;

  textJudul({required this.label});

  @override
  _textJudulState createState() => _textJudulState();
}

class _textJudulState extends State<textJudul> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.label),
        SizedBox(
          height: 5,
        ),
        TextField(
          onChanged: (value) {
            setState() {
              text = value;
            }
          },
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.amber),
            ),
            hintText: "Tulis Detail Tiket*",
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        )
      ],
    );
  }
}
