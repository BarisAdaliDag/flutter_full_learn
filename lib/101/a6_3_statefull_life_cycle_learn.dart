import 'package:flutter/material.dart';

// 6. video 45 dk

//ust kisimda veri alma verme yapilir immutuble-degismez veri yapisi bu yuzden final
class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    // initstate sonre calisir drawing once calisir.
    // Sayfa kople draw ed'ld'ginde calisir
    super.didChangeDependencies();
    print('c');
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    // ust classta veri degistiginde calisan kod
    // kodda ust classta degisiklik olunca burada ust siniftaki degiklik ugulanir
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      print("b");
      _message = widget.message;
      _computeName();
      setState(() {});
    }
  }

  @override
  void dispose() {
    // sayfadan ciktigi anda calisir
    super.dispose();
    _message = "";
  }

  // Mesaj tekse yanina tek yoksa cift yaz

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('a');
  }

  void _computeName() {
    if (_isOdd) {
      _message += " Cift";
    } else {
      _message += " Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: Column(
        children: [
          _isOdd
              ? TextButton(onPressed: () {}, child: Text(_message))
              : ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _message = "a";
                    });
                  },
                  child: Text(_message)),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  _message = "Did update test";
                });
              },
              child: const Text("Did update test"))
        ],
      ),
    );
  }
}
