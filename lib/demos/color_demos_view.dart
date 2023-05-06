import 'package:flutter/material.dart';

class ColorDemosLearn extends StatefulWidget {
  const ColorDemosLearn({super.key});

  @override
  State<ColorDemosLearn> createState() => _ColorDemosLearnState();
}

class _ColorDemosLearnState extends State<ColorDemosLearn> {
  Color? _backgroundColor = Colors.transparent;

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  void onTapped(int index) {
    if (index == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (index == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (index == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          onTapped(index);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.colorize),
            label: 'Red',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.colorize),
            label: 'Yellow',
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.colorize),
            label: 'Blue',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

enum _MyColors { red, yellow, blue }
