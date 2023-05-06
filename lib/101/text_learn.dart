import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  const TextLearn({super.key});
  final String name = 'Murat Han';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Benim adım $name",
              style: MyTextStyles.centerTextStyle,
            ),
            Text(
              "Benim adım $name",
              style: MyTextStyles.centerTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextStyles {
  static TextStyle centerTextStyle = const TextStyle(
    color: Colors.red,
    backgroundColor: Color.fromARGB(123, 238, 129, 4),
    fontSize: 24,
  );
}
