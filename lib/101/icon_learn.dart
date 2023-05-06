import 'package:flutter/material.dart';
import 'package:learning_project/101/app_bar_learn.dart';

class IconLearnView extends StatelessWidget {
  const IconLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.youtube_searched_for,
              color: Colors.red,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
