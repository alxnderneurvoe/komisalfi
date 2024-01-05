import 'package:apk_alfi/handler.dart';
import 'package:flutter/material.dart';

import 'profil-button.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: light),
        backgroundColor: light,
        body: Column(children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(children: [
                CircleAvatar(
                    radius: 33,
                    child: ClipOval(
                        child: Image.asset('assets/pp.png',
                            fit: BoxFit.cover, width: 100, height: 100))),
                const SizedBox(width: 20),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('M. Farhan Alfisaputra',
                      style: TextStyle(
                          fontSize: 14,
                          color: black,
                          fontWeight: FontWeight.bold)),
                  Text('Farhan42003@gmail.com',
                      style: TextStyle(fontSize: 14, color: black)),
                  Text('+628263078005',
                      style: TextStyle(fontSize: 14, color: black))
                ]),
                const SizedBox(width: 70),
                Icon(Icons.edit, color: black, size: 30)
              ])),
          const ButtonProfil()
        ]));
  }
}
