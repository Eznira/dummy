import 'package:dummy/columns_page.dart';
import 'package:dummy/gesture_page.dart';
import 'package:dummy/grid_veiw_page.dart';
import 'package:dummy/list_view_page.dart';
import 'package:dummy/stack_page.dart';
import 'package:flutter/material.dart';
import 'endless_scroll.dart';
import 'home_page.dart';


void main() {
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
        "/home": (context) => MyHomePage(),
        "/columns_page": (context) => ColumnsPage(),
        "/list_view_page": (context) => ListViewPage(),

      },
      home: MyHomePage(),
    );
  }
}
