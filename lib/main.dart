import 'package:flutter/material.dart';
import 'package:ytclone/collections.dart';
import 'package:ytclone/home.dart';
import 'package:ytclone/shorts.dart';
import 'package:ytclone/subscribtions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YTclone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/shorts': (context) => Shorts(),
        '/subscribtions': (context) => Subscribtions(),
        '/collections': (context) => Collections(),
      },
    );
  }
}