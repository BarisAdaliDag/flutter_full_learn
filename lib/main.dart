import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:full_learn_flutter/101/a5_1_custom_widget_learn.dart';
import 'package:full_learn_flutter/101/a5_2_indicator_learn.dart';
import 'package:full_learn_flutter/101/a5_3_list_tile_learn.dart';
import 'package:full_learn_flutter/101/a5_4_column_row_learn.dart';
import 'package:full_learn_flutter/101/a5_5_stack_learn.dart';
import 'package:full_learn_flutter/101/a6_1_statefull_learn.dart';
import 'package:full_learn_flutter/101/a6_2_page_view_learn.dart';
import 'package:full_learn_flutter/101/a6_3_statefull_life_cycle_learn.dart';
import 'package:full_learn_flutter/101/a7_3_list_view_builder.dart';
import 'package:full_learn_flutter/101/a7_5_navigation_learn.dart';
import 'package:full_learn_flutter/101/text_learn_view.dart';
import 'package:full_learn_flutter/101/a6_4_text_field_learn.dart';
import 'package:full_learn_flutter/202/a8_1_tabLearn.dart';
import 'package:full_learn_flutter/demos/a5_6_stack_demo_view.dart';
import 'package:full_learn_flutter/demos/a7_1_color_demos_view.dart';
import 'package:full_learn_flutter/demos/a7_1b_color_life_cycle.dart';

import 'demos/a7_4_my_collectıons.dart';

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
      home: const TabLearn(),
    );
  }
}
