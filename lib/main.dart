import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "News App",
      theme: ThemeData(
        // primaryColor: Colors.white,
        // primarySwatch: Colors.blue,

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          // color: Colors.black,
        ),
      ),
      home: const Home(),
    );
  }
}
