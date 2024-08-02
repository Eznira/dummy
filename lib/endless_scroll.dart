import 'package:flutter/material.dart';

class EndlessScroll extends StatefulWidget {
  const EndlessScroll({Key? key}) : super(key: key);

  @override
  State<EndlessScroll> createState() => _EndlessScrollState();
}

class _EndlessScrollState extends State<EndlessScroll> {
  final List<Color> _colors = [
    Colors.red,
    Colors.blue,Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.teal,
    Colors.pink,
    Colors.brown,
    Colors.grey,
  ];
  final _scrollController = ScrollController();
  int _itemCount = 10;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      setState(() {
        _itemCount += 10;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Endless Scroll'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: _itemCount,
        itemBuilder: (context, index) {
          return Container(
            height: 400,
            color: _colors[index % _colors.length],
          );
        },
      ),
    );
  }
}