// ignore_for_file: must_be_immutable

import 'package:apk_alfi/handler.dart';
import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Container(
          alignment: Alignment.topCenter,
          padding:
              const EdgeInsets.only(top: 15, bottom: 20, right: 30, left: 30),
          height: 610,
          width: double.infinity,
          decoration: BoxDecoration(
              color: light2,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Column(children: [
            Container(
                width: 100,
                margin: const EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                    border: Border.all(color: black, width: 3.5),
                    borderRadius: BorderRadius.circular(10))),
            SizedBox(
                height: 400,
                width: double.infinity,
                child: Container(
                    alignment: Alignment.center,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assets/kopi.jpeg',
                            fit: BoxFit.cover, height: 500)))),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 25),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                decoration: BoxDecoration(
                  color: opacity.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Brown Sugar Coffee",
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w500,
                              color: brown,
                              height: 1.2)),
                      Text("Rp. 19.000",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: light,
                              height: 1.2))
                    ])),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    height: 45,
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: black, borderRadius: BorderRadius.circular(25)),
                    child: Text("ORDER",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: white,
                            height: 1.2))))
          ]));
    });
  }
}
