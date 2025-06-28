import 'package:flutter/material.dart';
import 'package:notes/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Notes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: false,
        brightness: Brightness.dark,
      ),
      home: const HomeScreen(),
    );
  }
}
