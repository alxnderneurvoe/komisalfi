// ignore_for_file: file_names

import 'package:flutter/material.dart';

class KopiBawah extends StatelessWidget {
  const KopiBawah({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 155,
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(children: [
                  Image.asset('assets/banner1.png'),
                  Image.asset('assets/banner1.png'),
                  Image.asset('assets/banner1.png'),
                  Image.asset('assets/banner1.png'),
                ]))));
  }
}
