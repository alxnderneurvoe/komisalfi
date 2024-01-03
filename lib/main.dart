import 'package:flutter/material.dart';

import 'sign/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SeratusTiga',
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}