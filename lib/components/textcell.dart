import 'package:flutter/material.dart';

class Textcell extends StatefulWidget {
  late final String cell;
  //late TextEditingController _controller;
  TextEditingController _controller = TextEditingController();

  // Textcell({Key? key, required this.cell, required this._controller})
  //     : super(key: key);

  @override
  _TextcellState createState() => _TextcellState(cell: cell);
}

class _TextcellState extends State<Textcell> {
  final String cell;

  _TextcellState({required this.cell});
  //TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      //controller: _controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        //labelText: 'Date',
        hintText: cell,
      ),
    );
  }
}
