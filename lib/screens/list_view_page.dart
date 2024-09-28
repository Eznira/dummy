import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                width: 90,
                color: Colors.deepPurple[index * 100],
              );
            }),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.cancel,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
