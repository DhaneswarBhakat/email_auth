import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:email_auth/pages/login_page.dart';
import 'package:email_auth/pages/home_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            //user is logged in
            if (snapshot.hasData) {
              return HomePage();
              // return Center(
              // //   child: Column(
              // //     mainAxisAlignment: MainAxisAlignment.center,
              // //     children: [
              // //       Text('You are logged in'),
              // //       ElevatedButton(
              // //         onPressed: () async {
              // //           await FirebaseAuth.instance.signOut();
              // //         },
              // //         child: Text('Logout'),
              // //       ),
              // //     ],
              // //   ),
              // // );
            }
            //user is not logged in
            else {
              return LoginPage();
              // return Center(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text('You are not logged in'),
              //       ElevatedButton(
              //         onPressed: () async {
              //           await FirebaseAuth.instance.signInAnonymously();
              //         },
              //         child: Text('Login'),
              //       ),
              //     ],
              //   ),
              // );
            }
          }),
    );
  }
}
