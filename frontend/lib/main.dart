import 'package:flutter/material.dart';
import 'package:todo/theme/Colors.dart' as ThemeColor;
import 'package:todo/views/HomeScreen/HomeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo',
      theme: ThemeData(
        backgroundColor: ThemeColor.backgroundColor,
      ),
      home: HomeScreen(),
    );
  }
}
