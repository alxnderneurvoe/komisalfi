import 'package:apk_alfi/handler.dart';
import 'package:flutter/material.dart';

import '../nav.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: light,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bg.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 250),
              child: Image.asset(
                'assets/logo-coklat.png',
                width: 200,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 120),
              child: ElevatedButton(
                onPressed: () {
                  navToLogin(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: darkbrown,
                  fixedSize: const Size(200, 50),
                ),
                child: const Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
