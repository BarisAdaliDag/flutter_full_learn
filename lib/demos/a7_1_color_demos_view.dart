// Bir ekran olacak
// Bu ekranda 3 button ve bunlara basinca renk degisimi olacak
// Secili olan button selected icon olsun

// 7.video 2 dk
import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  final Color? initialColor;
  const ColorDemos({super.key, this.initialColor});

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color _backgroundColor = Colors.transparent;
  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
// ust classta degisiklik oldugu zaman teikleniyor
    print(oldWidget.initialColor != _backgroundColor);
    inspect(_backgroundColor); // widget ozelliklerine bakma
    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor ?? Colors.transparent);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          _colorOnTap(value);
        },
        items: const [
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.red,
              ),
              label: 'Red'),
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.yellow,
              ),
              label: 'Yellow'),
          BottomNavigationBarItem(
              icon: _ColorContainer(
                color: Colors.green,
              ),
              label: 'Green'),
        ],
      ),
    );
  }

  void _colorOnTap(int value) {
    //if (value == 0 ){} calisiyor ilk buton red daha iyi yazim icin asagidaki yazim daha okunakli
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else {
      changeBackgroundColor(Colors.green);
    }
  }
}

enum _MyColors { red, yellow, green }

class _ColorContainer extends StatelessWidget {
  final Color color;
  const _ColorContainer({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
