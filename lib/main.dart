import 'package:counter/home.dart';
import 'package:counter/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: TaylorsTheme.themeData,
      title: 'Counter 🦉',
      home: const Home(),
    );
  }
}
