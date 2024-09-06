import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:full_learn_flutter/303/a16_1_lottie_learn.dart';

import '../../product/init/lang/locale_keys.g.dart';

class ComputeLearnView extends StatefulWidget {
  const ComputeLearnView({super.key});
  @override
  State<ComputeLearnView> createState() => _ComputeLearnViewState();
}

class _ComputeLearnViewState extends State<ComputeLearnView> {
  int _result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_result.toString()),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        int result = 0;
        for (var i = 0; i < 1000000000; i++) {
          result = i * i;
        }
        // final result = await compute(Calculator.sum, 1000000000);
        // compute main thread yerine ayrı bir thread çalışmasını sağlatıyor. Bu da main thread yormuyor donma olmuyor
        setState(() {
          _result = result;
        });
      }),
      body: Column(
        children: [const CircularProgressIndicator(), Text(LocaleKeys.login_welcome.tr()), const LoadingLottie()],
      ),
    );
  }
}

class Calculator {
  static int sum(int limit) {
    int result = 0;
    for (var i = 0; i < limit; i++) {
      result = i * i;
    }
    return result;
  }
}
