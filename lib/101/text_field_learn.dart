import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: TextField(
          maxLength: 50,
          decoration: InputDecoration(
            hintText: 'Enter a search term',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            labelText: "Search",
          ),
        ),
      ),
    );
  }
}
