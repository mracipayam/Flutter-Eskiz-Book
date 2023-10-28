import 'package:flutter/material.dart';
import 'package:learning_project/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];

  void addSelected(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: Placeholder(
            // color: selectedItems.contains(index) ?  Colors.green :  Colors.red,
            color: Colors.red,
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () async {
          final response = await navigateToWidgetNormal<bool>(
              context, NavigateDetailLearnDart());
          if (response == true) {}
        },
      ),
    );
  }
}

mixin NavigatorManager {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
      ),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
      ),
    );
  }
}
