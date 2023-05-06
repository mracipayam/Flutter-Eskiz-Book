import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Text(
            "Merhaba",
            style: Theme.of(context).textTheme.headlineLarge,
            maxLines: 1,
          ),
          const Divider(),
          Container(
            color: Colors.red,
            height: 300,
          ),
          const Divider(height: 100),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.purple,
                  width: 200,
                ),
                Container(
                  color: Colors.yellow,
                  width: 200,
                ),
                Container(
                  color: Colors.blue,
                  width: 200,
                ),
              ],
            ),
          ),
          const Divider(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
