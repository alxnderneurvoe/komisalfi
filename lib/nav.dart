import 'package:apk_alfi/home/profil.dart';
import 'package:apk_alfi/home/search.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';
import 'sign/login.dart';
import 'sign/register.dart';

void navToLogin(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const LoginPage()),
  );
}

void navToRegister(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const RegisterPage()),
  );
}

void navToHome(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const HomePage()),
  );
}

void navToSearch(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SearchPage()),
  );
}

void navToProfil(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ProfilPage()),
  );
}
