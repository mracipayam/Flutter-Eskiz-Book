import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String data = "Click me!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: CustomButton(
        data: data,
        onPressed: () {
          print("Merhaba tıkladın bana!");
        },
      )),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.data,
    required this.onPressed,
  });

  final String data;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      onPressed: onPressed,
      child: Padding(
        padding: _PaddingUtility.buttonPadding,
        child: Text(
          data,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
}

class _PaddingUtility {
  static const buttonPadding = EdgeInsets.all(8.0);
}
