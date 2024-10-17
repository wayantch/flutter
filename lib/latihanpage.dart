import 'package:flutter/material.dart';

class LatihanPage extends StatefulWidget {
  const LatihanPage({super.key});

  @override
  State<LatihanPage> createState() => _LatihanPageState();
}

class _LatihanPageState extends State<LatihanPage> {
  double _counter = 0;

  void tambah() {
    setState(() {
      _counter += 5;
    });
  }

  void kurang() {
    setState(() {
      _counter -= 3;
    });
  }

  void bagi() {
    setState(() {
      _counter /= 3;
    });
  }

  void kali() {
    setState(() {
      _counter *= 7;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Halaman Latihan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Latihan'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(
              onPressed: tambah,
              child: const Text("Tambah +5"),
            ),
            ElevatedButton(
              onPressed: kurang,
              child: const Text("Kurang -3"),
            ),
            ElevatedButton(
              onPressed: bagi,
              child: const Text("Bagi /3"),
            ),
            ElevatedButton(
              onPressed: kali,
              child: const Text("Kali *7"),
            ),
          ],
        ),
      ),
    );
  }
}
