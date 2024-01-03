import 'package:apk_alfi/handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'notif.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  int _currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: light,
        body: Column(children: [
          Container(
              height: 70,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: black))),
              padding: const EdgeInsets.only(
                  top: 25, bottom: 10, right: 20, left: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('My Orders'),
                    Icon(Icons.arrow_back, color: Colors.grey.shade900)
                  ])),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: brown),
                        child: Text('History', style: TextStyle(color: white))),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: brown),
                        child: Text('Ongoing', style: TextStyle(color: white))),
                    Container( width: 100,
                      alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: brown),
                        child:
                            Text('Scheduled', style: TextStyle(color: white)))
                  ])),
          Container(
            decoration:
                BoxDecoration(border: Border(bottom: BorderSide(color: black))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 10),
                    child: Row(children: [
                      Icon(Icons.coffee, color: black, size: 40),
                      const SizedBox(width: 20),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('Hot Coffee',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: black)),
                            Text('4x Items',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                    fontSize: 11)),
                            Text('Arabica Beans',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                    fontSize: 10,
                                    height: 1)),
                            Text('Delivered',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                    fontSize: 14,
                                    height: 2))
                          ])
                    ])),
                Container(
                    margin: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 10),
                    child: Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: black)),
                            Text('4x Items',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                    fontSize: 11)),
                            Text('',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: black,
                                    fontSize: 10,
                                    height: 1)),
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: brown),
                                child: Text('info',
                                    style:
                                        TextStyle(color: white, fontSize: 10)))
                          ])
                    ])),
              ],
            ),
          )
        ]),
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentIndex,
          onTap: itemTapped,
        ));
  }

  void itemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShopPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShopPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NotifPage()),
        );
        break;
    }
  }
}
