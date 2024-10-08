import 'package:flutter/cupertino.dart';

import '../navigator_17_1/navigator_manager.dart';

mixin NavigatorMixin<T extends StatefulWidget> on State<T> {
  NavigatorManager get router => NavigatorManager.instance;
}
