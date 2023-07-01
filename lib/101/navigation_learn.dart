import 'package:flutter/material.dart';
import 'package:learning_project/101/image_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return const ImageLearn();
          }));
        },
      ),
    );
  }
}
