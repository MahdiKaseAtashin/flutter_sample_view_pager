import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 1)
    ..addListener(() {
      if (kDebugMode) {
        print('object');
      }
    });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Container(
            color: Colors.greenAccent,
          ),
          Container(
            color: Colors.redAccent,
          ),
          Container(
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
