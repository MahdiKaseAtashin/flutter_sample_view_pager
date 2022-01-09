import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: MyViewPager(),
    ));

class MyViewPager extends StatefulWidget {
  const MyViewPager({Key? key}) : super(key: key);

  @override
  _MyViewPagerState createState() => _MyViewPagerState();
}

class _MyViewPagerState extends State<MyViewPager> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}
