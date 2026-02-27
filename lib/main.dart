import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String title = 'Aplikasi Pertamaku';
    String name = 'Taslim Nuralim';
    String message = 'Halo nama saya $name, selamat datang di $title';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 9, 125, 44),
          title: Text(title),
        ),
        body: Center(child: Text(message)),
      ),
    );
  }
}
