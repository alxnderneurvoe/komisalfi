import 'package:apk_alfi/handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          Container(
              margin: const EdgeInsets.only(top: 140, left: 20),
              child: Column(children: [
                Row(children: [
                  const Icon(CupertinoIcons.bag_fill, size: 35),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: black))),
                      width: 300,
                      margin: const EdgeInsets.only(left: 10),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'My Orders',
                              style: TextStyle(height: 3),
                            ),
                            Icon(Icons.chevron_right_outlined)
                          ]))
                ])
              ])),
          Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Column(children: [
                Row(children: [
                  const Icon(Icons.favorite, size: 35),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: black))),
                      width: 300,
                      margin: const EdgeInsets.only(left: 10),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Wishlist',
                              style: TextStyle(height: 3),
                            ),
                            Icon(Icons.chevron_right_outlined)
                          ]))
                ])
              ])),
          Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Column(children: [
                Row(children: [
                  const Icon(CupertinoIcons.bell_fill, size: 35),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: black))),
                      width: 300,
                      margin: const EdgeInsets.only(left: 10),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Notification',
                              style: TextStyle(height: 3),
                            ),
                            Icon(Icons.chevron_right_outlined)
                          ]))
                ])
              ])),
          Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Column(children: [
                Row(children: [
                  const Icon(Icons.insert_link, size: 35),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: black))),
                      width: 300,
                      margin: const EdgeInsets.only(left: 10),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Manage Accounts',
                              style: TextStyle(height: 3),
                            ),
                            Icon(Icons.chevron_right_outlined)
                          ]))
                ])
              ]))
        ]));
  }
}
