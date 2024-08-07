import 'package:flutter/material.dart';

class NavigateDetailLearnDart extends StatefulWidget {
  const NavigateDetailLearnDart({super.key, this.isOkey = false});
  final bool isOkey;
  @override
  State<NavigateDetailLearnDart> createState() => _NavigateLearnDartState();
}

class _NavigateLearnDartState extends State<NavigateDetailLearnDart> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    //veri donuste veri yakalama bunu onermiyor 1. yontem
    //  ModalRoute.of(context).settings.arguments
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              //veri donuste veri yakalama 2. yontem
              Navigator.of(context).pop(!widget.isOkey);
            },
            icon: Icon(Icons.check,
                color: widget.isOkey ? Colors.red : Colors.green),
            label: widget.isOkey ? const Text('Red') : const Text('Onayla')),
      ),
    );
  }
}
