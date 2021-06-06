import 'package:flutter/material.dart';
import 'package:shoes_market/pages/first_page.dart';
import 'package:shoes_market/pages/second_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: {
        Home.id: (context) => Home(),
        Buying.id: (context) => Buying(),
      },
    );
  }
}

