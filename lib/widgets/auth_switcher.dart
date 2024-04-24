import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meetup_app/view/login_page.dart';

class AuthSwitcher extends StatelessWidget {
  static const routePath = '/';
  const AuthSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return const LoginPage();
        } else {
          return const LoginPage();
        }
      },
    );
  }
}
