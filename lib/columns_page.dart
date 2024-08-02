import 'package:flutter/material.dart';

class ColumnsPage extends StatelessWidget {
  const ColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text(
            "Columns",
            style: TextStyle(
              color: Colors.white,
              fontSize: 29,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple[200],
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: 120,
                  width: 160,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: 120,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: 120,
                  width: 280,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: 120,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  height: 120,
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/list_view_page");
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    height: 60,
                    width: double.infinity,
                    margin: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.yellow[500],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
