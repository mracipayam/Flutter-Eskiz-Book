import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          CustomCard(
            color: Colors.red,
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text(
                  "Murathan",
                ),
              ),
            ),
          ),
          CustomCard(
              color: Colors.yellow,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Center(
                  child: Text(
                    "Serap",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
    required this.color,
  });
  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: color,
      margin: ProjectMargins.cardMargin,
      child: child,
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(8);
}
