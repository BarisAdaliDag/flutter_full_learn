import 'package:flutter/material.dart';
import '../product/a6_1_counter_hello_button.dart';
import '../product/language/language_items.dart';

// 6. video 7 dk

// Bu kisim degismez sadece disaridan parametre alir verme yapilir ust kisim
class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

// Logic yazacagimiz kisim
class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue = 0;
  int _barisCounter = 0;
  final int _counterCustom = 0;

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincrementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(_countValue.toString(),
                  style: Theme.of(context).textTheme.displayMedium)),
          const Placeholder(),
          const CounterHelloButton(),
          ElevatedButton(
              onPressed: () {
                //bu buton calistiginda t]m state bir daha derleniyor
                //floating icindeki burda yazisida geliyor  bu engellemek icin extract widget kullan
                setState(() {
                  _barisCounter = _barisCounter + 1;
                });
              },
              child: Text('Baris count $_barisCounter'))
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('burda');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
