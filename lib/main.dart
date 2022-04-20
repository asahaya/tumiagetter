import 'package:flutter/material.dart';
import 'package:tumiagetter/select_green_page.dart';
import 'package:tumiagetter/src/tumiagetter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tsumiagetter',
      theme: ThemeData(
        primaryColor:Color(0x32CD32),
      ),
      home: SelectGreenPage(),
    );
  }
}

