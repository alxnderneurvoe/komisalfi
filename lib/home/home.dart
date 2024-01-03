import 'package:apk_alfi/handler.dart';
import 'package:apk_alfi/nav.dart';
import 'package:flutter/material.dart';

import 'fav.dart';
import 'notif.dart';
import 'shop.dart';
import 'widget_kopi_bawah.dart';
import 'widget_kopi_scroll.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: 810,
            width: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/bg2.png',
                    ))),
            child: Column(children: [
              GestureDetector(
                onTap: () {
                  navToProfil(context);
                },
                child: Container(
                    margin: const EdgeInsets.only(
                        top: 50, left: 40, right: 40, bottom: 15),
                    height: 85,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/logo-cream.png'),
                          CircleAvatar(
                              radius: 33,
                              child: ClipOval(
                                  child: Image.asset('assets/pp.png',
                                      fit: BoxFit.cover,
                                      width: 100,
                                      height: 100)))
                        ])),
              ),
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: darkbrown),
                  child: GestureDetector(
                      onTap: () {
                        navToSearch(context);
                      },
                      child: const Row(children: [
                        Icon(Icons.search, color: Colors.grey),
                        Text('    Search Coffee',
                            style: TextStyle(color: Colors.grey))
                      ]))),
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: darkbrown,
                  ),
                  child: Image.asset('assets/diskon.png', fit: BoxFit.cover)),
              const KopiScroll(),
              const KopiBawah()
            ])),
        bottomNavigationBar: BottomNavBar(
          currentIndex: _currentIndex,
          onTap: itemTapped,
        ));
  }

  // INDEX HITUNG BUTTON BAR BAWAH
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
          MaterialPageRoute(builder: (context) => const FavPage()),
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
