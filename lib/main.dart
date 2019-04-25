import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(HelloFlutterApp());


class HelloFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter 01',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home()
        );
  }
}
