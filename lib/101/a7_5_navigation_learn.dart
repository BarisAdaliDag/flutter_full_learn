import 'package:flutter/material.dart';

import 'a7_5b_navigate_detail_learn.dart';

//

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManagerSimple {
  List<int> selectedItems = [];

  void addSelected(int index, bool isAdd) {
    setState(() {
      isAdd ? selectedItems.add(index) : selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final response = await navigateToWidgetNormal<bool>(
                  context,
                  NavigateDetailLearnDart(
                      isOkey: selectedItems.contains(index)));
//Note: burda linkte bir sonraki sayfaya gittiginde donuste color green oluyor
              if (response is bool) {
                addSelected(index, response);
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Placeholder(
                  // rengi bir sonraki sayfada donuste selectedItems l'stedeki index degeri ekliyor o yuzden yesil oluyor
                  color: selectedItems.contains(index)
                      ? Colors.green
                      : Colors.red),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigation_rounded),
        onPressed: () async {
          final response = await navigateToWidgetNormal(
              context, const NavigateDetailLearnDart());
          if (response == true) {
            print('Popta veri getirme ozelligi true verisi getirdi');
          }
        },
      ),
    );
  }
}

//
mixin NavigatorManagerSimple {
  void navigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          fullscreenDialog: true,
          settings: const RouteSettings()),
    );
  }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
          builder: (context) {
            return widget;
          },
          settings: const RouteSettings()),
    );
  }
}
