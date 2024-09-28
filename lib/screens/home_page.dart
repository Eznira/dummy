import 'package:dummy/screens/gesture_page.dart';
import 'package:dummy/screens/grid_veiw_page.dart';
import 'package:dummy/screens/page_one.dart';
import 'package:flutter/material.dart';

import 'log_out_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIndex = 0;
  final List<Widget> _pages = [
    const PageOne(),
    GridVeiwPage(),
    GesturePage(),
  ];
  void _navigatePages(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  void logOut() {
    showDialog(context: context, builder: (context) => LogOutPopUp());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        backgroundColor: Colors.deepPurple[200],
        onTap: _navigatePages,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Grid",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.grid_3x3), label: "Grid"),
          BottomNavigationBarItem(icon: Icon(Icons.gesture), label: "Grid"),
        ],
      ),
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        // leading: const Icon(
        //   Icons.menu,
        //   color: Colors.white,
        // ),
        actions: [
          IconButton(
            onPressed: () {
              //Navigator.pop(context);
              logOut();
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.heart_broken,
                color: Colors.deepPurple[700],
                size: 60,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/home");
              },
              leading: Icon(
                Icons.home,
                color: Colors.deepPurple[700],
                size: 30,
              ),
              title: const Text(
                "H O M E",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, "/columns_page");
              },
              leading: Icon(
                Icons.settings,
                color: Colors.deepPurple[700],
                size: 30,
              ),
              title: const Text(
                "S E T T I N G S",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_pageIndex],
    );
  }
}
