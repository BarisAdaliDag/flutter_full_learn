import 'package:flutter/material.dart';

class NavigateHomeDetail extends StatefulWidget {
  const NavigateHomeDetail({super.key, this.id});
  final String? id;

  @override
  State<NavigateHomeDetail> createState() => _NavigateHomeDetailState();
}

class _NavigateHomeDetailState extends State<NavigateHomeDetail> {
  String? _id;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _id = widget.id;

    if (_id == null) {
      Future.microtask(() {
        final modelId = ModalRoute.of(context)
            ?.settings
            .arguments; // arguments gelan datayi lamak icin yontem
        // if (modelId is String) {
        //   _id = modelId;
        // } else {
        //   _id = widget.id;
        // }
// yukaridakinin kisaltimis hali
        setState(() {
          _id = modelId is String ? modelId : widget.id;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.error,
      appBar: AppBar(
        title: Text(_id ?? ''),
      ),
    );
  }
}
