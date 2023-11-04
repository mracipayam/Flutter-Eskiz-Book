import 'package:flutter/material.dart';
import 'package:learning_project/101/navigation_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.blueGrey[900],
        ),
      ),
      home: const NavigationLearn(),
    );
  }
}
