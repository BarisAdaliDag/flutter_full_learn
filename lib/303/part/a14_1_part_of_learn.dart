import 'package:flutter/material.dart';

part 'a14_1b_part_appbar.dart';

class PartofLearn extends StatefulWidget {
  const PartofLearn({super.key});

  @override
  State<PartofLearn> createState() => _PartofLearnState();
}

class _PartofLearnState extends State<PartofLearn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _PartofAppBar(),
      body: Text('data'),
    );
  }
}
