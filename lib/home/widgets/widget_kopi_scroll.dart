// ignore_for_file: file_names


import 'package:flutter/material.dart';

import '../../handler.dart';
import 'bottomsheet.dart';

class KopiScroll extends StatelessWidget {
  const KopiScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            child: Row(
                children: List.generate(10, (index) {
              return GestureDetector(
                  onTap: () {
                    _showBottomSheet(context);
                  },
                  child: SizedBox(
                      width: 100,
                      height: 155,
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
                                Text("Rp. 19.000",
                                    style:
                                        TextStyle(fontSize: 10, color: black))
                              ]))));
            }))));
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
