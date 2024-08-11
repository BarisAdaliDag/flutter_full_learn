import 'package:flutter/material.dart';

// 10. video 1.05 dk
class WidgetSizeEnumLaernView extends StatefulWidget {
  const WidgetSizeEnumLaernView({super.key});

  @override
  State<WidgetSizeEnumLaernView> createState() =>
      _WidgetSizeEnumLaernViewState();
}

class _WidgetSizeEnumLaernViewState extends State<WidgetSizeEnumLaernView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Container(
              height: WidgetSizes.normalCardHeight.value(),
              color: Colors.green,
            ),
          ),
          Text('data', style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWidth }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.circleProfileWidth:
        return 25;
    }
  }
}
