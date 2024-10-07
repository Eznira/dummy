import 'package:dummy/screens/home_page.dart';
import 'package:dummy/screens/sing_up_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Check if user is signed in.
          if (snapshot.hasData) {
            return MyHomePage();
          } else {
            return SingUpIn();
          }
        },
      ),
    );
  }
}
