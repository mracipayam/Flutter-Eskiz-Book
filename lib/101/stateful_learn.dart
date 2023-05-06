import 'package:flutter/material.dart';
import 'package:learning_project/product/counter_hello_button.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _countValue = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue++;
    } else {
      _countValue--;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Text(_countValue.toString())),
          const Placeholder(),
          CounterHelloButton(),
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _decrementButton(),
        ],
      ),
    );
  }

  Padding _decrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }
}
