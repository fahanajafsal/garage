import 'package:flutter/material.dart';
import 'package:project/user/Cars.dart';
import 'package:project/user/login.dart';
import 'package:project/user/selectoil.dart';
import 'package:project/user/userhomepage.dart';
import 'package:project/user/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Welcome(),
    );
  }
}
