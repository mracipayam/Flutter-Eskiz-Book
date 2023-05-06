import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Merhaba'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 500,
                    child: Center(
                      child: Text("Seni Seviyorum Canım Karım"),
                    ),
                  ));
        },
        child: const Icon(
          Icons.search,
          color: Colors.pink,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.microwave_rounded), label: "Main Page"),
        BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined), label: "Messages"),
      ]),
    );
  }
}
