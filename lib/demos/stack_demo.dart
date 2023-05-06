import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final double _cardHeight = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned.fill(
                    bottom: _cardHeight / 2,
                    child: Image.asset(
                      "profile.jpg",
                      fit: BoxFit.cover,
                    )),
                Positioned(height: _cardHeight, bottom: 0, width: 200, child: CustomCard()),
              ],
            ),
          ),
          const Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: RoundedRectangleBorder(),
      color: Colors.white,
    );
  }
}
