import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../handler.dart';
import '../../nav.dart';

class ButtonProfil extends StatelessWidget {
  const ButtonProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          margin: const EdgeInsets.only(top: 100, left: 20),
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
                        Text('My Orders', style: TextStyle(height: 3)),
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
                        Text('Wishlist', style: TextStyle(height: 3)),
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
                        Text('Notification', style: TextStyle(height: 3)),
                        Icon(Icons.chevron_right_outlined)
                      ]))
            ])
          ])),
      GestureDetector(
          onTap: () {
            navToStarted(context);
          },
          child: Container(
              margin: const EdgeInsets.only(top: 20, left: 20),
              child: Column(children: [
                Row(children: [
                  const Icon(Icons.login, size: 35),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: black))),
                      width: 300,
                      margin: const EdgeInsets.only(left: 10),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Log Out Account',
                                style: TextStyle(height: 3)),
                            Icon(Icons.chevron_right_outlined)
                          ]))
                ])
              ])))
    ]);
  }
}
