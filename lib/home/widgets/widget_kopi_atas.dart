// ignore_for_file: file_names

import 'package:apk_alfi/handler.dart';
import 'package:flutter/material.dart';

class KopiScrollAtas extends StatefulWidget {
  const KopiScrollAtas({super.key});

  @override
  State<KopiScrollAtas> createState() => _KopiScrollAtasState();
}

class _KopiScrollAtasState extends State<KopiScrollAtas> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: double.infinity,
      child: Column(children: [
        Container(
            height: 150,
            width: 354,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: PageView.builder(
                controller: _pageController,
                itemCount: 10,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 8),
                      height: 150,
                      width: 100,
                      child: Image.asset('assets/diskon.png',
                          fit: BoxFit.fitHeight));
                })),
        const SizedBox(height: 10),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(10, (index) {
              return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  height: _currentPage == index ? 10 : 8,
                  width: _currentPage == index ? 10 : 8,
                  decoration: BoxDecoration(
                      color: _currentPage == index ? darkbrown : Colors.grey,
                      borderRadius: BorderRadius.circular(10)));
            }))
      ]),
    );
  }
}
