import 'package:dummy/columns_page.dart';
import 'package:dummy/gesture_page.dart';
import 'package:dummy/grid_veiw_page.dart';
import 'package:dummy/page_one.dart';
import 'package:dummy/page_two.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _pageIndex = 0;
  final List<Widget> _pages = [
    PageOne(),
    GridVeiwPage(),
    GesturePage(),
  ];
  void _navigatePages(int index) {
    setState(() {
      _pageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        backgroundColor: Colors.deepPurple[200],
        onTap: _navigatePages,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Grid",),
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ColumnsPage()));
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
              title: Text(
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
              title: Text(
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
