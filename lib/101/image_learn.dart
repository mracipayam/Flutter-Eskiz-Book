import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Image.asset(
              "penguin.png",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
