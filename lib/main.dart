import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_learn_flutter/101/a21_custom_widget_learn.dart';
import 'package:full_learn_flutter/101/a22_indicator_learn.dart';
import 'package:full_learn_flutter/101/a23_list_tile_learn.dart';
import 'package:full_learn_flutter/101/a24_column_row_learn.dart';
import 'package:full_learn_flutter/101/a25_stack_learn.dart';
import 'package:full_learn_flutter/demos/a26_stack_demo_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme:
            const ProgressIndicatorThemeData(color: Colors.white),
        cardTheme: CardTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: Colors.transparent,
            elevation: 0),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const StackDemoView(),
    );
  }
}
