import 'package:flutter/material.dart';

// 5. video 3 dk
class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFootButton(
                  title: title,
                  onPressed: () {},
                )),
          )),
          const SizedBox(height: 100),
          const SizedBox(
            height: 122,
          ),
          CustomFootButton(title: title, onPressed: () {}),
        ],
      ),
    );
  }
}

mixin _ColorsUtility {
  // sadece bu classta kullanilacak private ata
  final Color redColor = Colors.red;
  final Color white = Colors.white;
}

mixin _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}

class CustomFootButton extends StatelessWidget
    with _ColorsUtility, _PaddingUtility {
  CustomFootButton({super.key, required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: redColor, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normal2xPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
