import 'package:email_auth/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:email_auth/pages/login_page.dart';

class LoginOrRegisterpage extends StatefulWidget {
  const LoginOrRegisterpage({super.key});

  @override
  State<LoginOrRegisterpage> createState() => _LoginOrRegisterpageState();
}

class _LoginOrRegisterpageState extends State<LoginOrRegisterpage> {
  //initially show login page
  bool showLoginPage = true;

  //toogle between login and register page
  void tooglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!showLoginPage) {
      return LoginPage(
        onTap: tooglePages,
      );
    } else {
      return RegisterPage(
        onTap: tooglePages,
      );
    }
  }
}
