import 'package:dummy/firebase_options.dart';
import 'package:dummy/screens/columns_page.dart';
import 'package:dummy/screens/home_page.dart';
import 'package:dummy/screens/list_view_page.dart';
import 'package:dummy/screens/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  // Enable async in flutter
  WidgetsFlutterBinding.ensureInitialized();

  // initialize firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      routes: {
        "/home": (context) => const MyHomePage(),
        "/columns_page": (context) => const ColumnsPage(),
        "/list_view_page": (context) => ListViewPage(),
      },
      home: const SignUpPage(),
    );
  }
}
