// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../handler.dart';
import '../nav.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 192, 144, 107),
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              // LOGO
              Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Image.asset(
                    'assets/logo-coklat.png',
                    width: 100,
                  )),
              Container(
                  margin: EdgeInsets.only(top: 90),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // NAMA
                        Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 7),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: TextField(
                                controller: _name,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Name',
                                    icon: Icon(CupertinoIcons.person_alt,
                                        color: Colors.black)))),
                        // EMAIL
                        Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 7),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            child: TextField(
                                controller: _email,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                    icon: Icon(CupertinoIcons.mail_solid,
                                        color: Colors.black)))),
                        // PASSWORD
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
                                    icon: Icon(Icons.lock, color: Colors.black),
                                    hintText: 'Password'))),
                        Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 55, vertical: 5),
                            child: Row(children: [
                              Icon(CupertinoIcons.square_fill,
                                  color: white, size: 15),
                              Container(
                                  margin: EdgeInsets.only(left: 6),
                                  child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: 'i agree with ',
                                          style: TextStyle(
                                              color: black, fontSize: 12),
                                          children: [
                                            TextSpan(
                                                text: 'Terms',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: white)),
                                            TextSpan(
                                                text: ' and ',
                                                style: TextStyle(
                                                    color: black,
                                                    fontSize: 12)),
                                            TextSpan(
                                                text: 'Privacy',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: white)),
                                          ])))
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
                                  navToLogin(context);
                                },
                                child: Text('Sign Up',
                                    style: TextStyle(color: Colors.white)))),
                        Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 100),
                            child: Column(children: [
                              Text('Already have an account?'),
                              SizedBox(height: 5),
                              GestureDetector(
                                  onTap: () {
                                    navToLogin(context);
                                  },
                                  child: Text('Login',
                                      style: TextStyle(color: Colors.white)))
                            ]))
                      ]))
            ])));
  }
}
