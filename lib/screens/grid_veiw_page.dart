import 'package:flutter/material.dart';

class GridVeiwPage extends StatelessWidget {
  GridVeiwPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 300,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 120,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 120,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 120,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 120,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 120,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 120,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 120,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 120,
            margin: EdgeInsets.all(4.0),
          ),
          Container(
            color: Colors.deepPurple[500],
            width: 120,
            height: 120,
            margin: EdgeInsets.all(4.0),
          ),
        ],
      ),
    );
  }
}
