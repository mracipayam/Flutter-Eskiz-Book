import 'package:flutter/material.dart';
import 'package:learning_project/101/list_view_builder.dart';
import 'package:learning_project/101/list_view_learn.dart';
import 'package:learning_project/demos/color_demos_view.dart';
import 'package:learning_project/demos/my_collection_demos.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.blueGrey[900],
        ),
      ),
      home: MyCollectionDemos(),
    );
  }
}
