import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Image.asset(
                "profile.jpg",
                fit: BoxFit.cover,
                height: 200,
              ),
              subtitle: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Hello There money"),
              ),
              onTap: () {
                print("You choose whisle!");
              },
              leading: const Icon(Icons.abc),
            ),
          ),
        ],
      ),
    );
  }
}
