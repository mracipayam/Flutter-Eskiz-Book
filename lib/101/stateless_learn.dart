import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          MyTextWidget(
            title: 'Murathan',
          ),
          MyTextWidget(
            title: "Haan",
          ),
          MyTextWidget(
            title: "Acıpayammm",
          ),
          CustomContainerWidget(),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28), color: Colors.red),
    );
  }
}

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
