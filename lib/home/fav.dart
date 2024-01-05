import 'package:apk_alfi/handler.dart';
import 'package:flutter/material.dart';

import 'bottomsheet.dart';
import 'home.dart';
import 'notif.dart';
import 'shop.dart';

class FavPage extends StatefulWidget {
  const FavPage({super.key});

  @override
  State<FavPage> createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  int _currentIndex = 1;

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
                    const Text('Whislist'),
                    Icon(
                      Icons.arrow_back,
                      color: Colors.grey.shade900,
                    )
                  ])),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Row(children: [
                //1
                GestureDetector(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: SizedBox(
                      width: 100,
                      height: 160,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    alignment: Alignment.center,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset('assets/kopi.jpeg',
                                            fit: BoxFit.fitHeight,
                                            height: 90,
                                            width: 160))),
                                const SizedBox(height: 5),
                                Text("Brown Sugar Coffee",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        color: black,
                                        height: 1.2)),
                                const SizedBox(height: 2),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Rp. 19.000",
                                          style: TextStyle(
                                              fontSize: 10, color: black)),
                                      const Icon(Icons.favorite,
                                          color: Colors.pink, size: 15)
                                    ])
                              ]))),
                )
              ]))
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

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return const BottomSheetContent();
        });
  }
}
