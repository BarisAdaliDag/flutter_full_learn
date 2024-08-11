import 'package:flutter/material.dart';
import 'package/a10_1b_loading_bar.dart';

import 'package/a10_1c_launch_mixin.dart';

// 10. video 17 dk

// url lanch deneme
class PackagLearnView extends StatefulWidget {
  const PackagLearnView({super.key});

  @override
  State<PackagLearnView> createState() => _PackagLearnViewState();
}

class _PackagLearnViewState extends State<PackagLearnView> with LaunchMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
          onPressed: () {
            launchURL('https://google.com');
          }),
      body: Column(
        children: [
          Text('a', style: Theme.of(context).textTheme.titleMedium),
          const LoadingBar(),
        ],
      ),
    );
  }

  @override
  void name(args) {}
}
