import 'package:flutter/material.dart';
import 'package:myapp/page-1/dashboard.dart';
import 'package:myapp/page-1/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Ekspresi',
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
