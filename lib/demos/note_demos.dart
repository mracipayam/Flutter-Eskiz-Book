import 'package:flutter/material.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalPaddings,
        child: Column(
          children: [
            PngImage(),
          ],
        ),
      ),
    );
  }
}

class PngImage extends StatelessWidget {
  const PngImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: Image.asset("penguin.png"),
      ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPaddings =
      EdgeInsets.symmetric(horizontal: 20);
}
