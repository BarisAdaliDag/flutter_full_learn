import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:full_learn_flutter/product/extension/string_extension.dart';

import '../viewModel/req_res_viewmodel.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({super.key});

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

class _ReqResViewState extends ReqResViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isLoading ? const CircularProgressIndicator() : null,
      ),
      body: ListView.builder(
          itemCount: resources.length,
          itemBuilder: (BuildContext context, int index) {
            //  inspect(resources[index]);  run tıme wıdget dubug saglar

            return Card(
                color: Color(resources[index].color.colorValue ?? 0),
                child: Text(resources[index].name ?? ""));
          }),
    );
  }
}
