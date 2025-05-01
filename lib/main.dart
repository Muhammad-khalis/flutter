import 'package:assignment2/screens/about.dart';
import 'package:assignment2/screens/home.dart';
import 'package:assignment2/screens/list.dart';
import 'package:assignment2/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/list': (context) => ListScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}
