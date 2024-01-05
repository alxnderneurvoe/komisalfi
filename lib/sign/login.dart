// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../handler.dart';
import '../nav.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool centang = false;

  String emailvalid = 'alpi@gmail.com';
  String passvalid = '12345678';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 192, 144, 107),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Image.asset('assets/logo-coklat.png', width: 100)),
              Container(
                  margin: EdgeInsets.only(top: 90),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 7),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: TextField(
                                controller: _email,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                    icon: Icon(CupertinoIcons.mail_solid,
                                        color: Colors.black)))),
                        Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 7),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: TextField(
                                controller: _password,
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    icon: Icon(Icons.lock),
                                    hintText: 'Password'))),
                        Container(
                            width: 105,
                            margin: EdgeInsets.symmetric(
                                horizontal: 55, vertical: 5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          centang = !centang;
                                        });
                                      },
                                      child: Icon(
                                          centang
                                              ? Icons.square_rounded
                                              : Icons.check_box,
                                          color: centang ? white : white,
                                          size: 20)),
                                  Text('Remember me',
                                      style: TextStyle(fontSize: 12))
                                ])),
                        Container(
                            alignment: Alignment.center,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: brown),
                            margin: EdgeInsets.symmetric(
                                horizontal: 55, vertical: 25),
                            child: GestureDetector(
                                onTap: () {
                                  _validlogin();
                                },
                                child: Text('Login',
                                    style: TextStyle(color: Colors.white)))),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(
                                horizontal: 55, vertical: 10),
                            child: Text('Or Login with',
                                style: TextStyle(fontSize: 12))),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 5),
                            child: CircleAvatar(
                                radius: 20,
                                child: ClipOval(
                                    child: Image.asset('assets/google.png',
                                        width: 30)))),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 50),
                            child: Column(children: [
                              Text('Don\'t have an account?'),
                              SizedBox(height: 5),
                              GestureDetector(
                                  onTap: () {
                                    navToRegister(context);
                                  },
                                  child: Text('Sign Up',
                                      style: TextStyle(color: Colors.white)))
                            ]))
                      ]))
            ])));
  }

  void _validlogin() {
    if (emailvalid == _email.text && passvalid == _password.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Berhasil Login!'),
          duration: Duration(seconds: 3),
        ),
      );
      navToHome(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email atau password salah!'),
          duration: Duration(seconds: 4),
        ),
      );
    }
  }
}
