import 'package:flutter/material.dart';

class Latihanpage3 extends StatefulWidget {
  const Latihanpage3({super.key});

  String get title => "Latihan 3";

  @override
  State<Latihanpage3> createState() => _Latihanpage3State();
}

class _Latihanpage3State extends State<Latihanpage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
    );
  }
}
