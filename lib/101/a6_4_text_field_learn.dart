import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../product/language/language_items.dart';

// 6. video 1.07 dk
class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  // Her bir animated container için ayrı GlobalKey oluşturun.
  final GlobalKey _keyOne = GlobalKey();
  final GlobalKey _keyTwo = GlobalKey();

  FocusNode focusNodeTextFieldBaris = FocusNode();
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextField(
              maxLength: 20,
              buildCounter: (context,
                  {required currentLength,
                  required isFocused,
                  required maxLength}) {
                return _animatedContainer(_keyOne, currentLength);
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'baris yazdi'),
            ),
            const SizedBox(
              height: 100,
            ),
            TextField(
              maxLength: 20, // max uzunluk verme
              //buildCounter textfield sol altinda custom widget olusturma
              buildCounter: (BuildContext context,
                  {int? currentLength, bool? isFocused, int? maxLength}) {
                return _animatedContainer(_keyTwo, currentLength);
              },
              keyboardType: TextInputType.emailAddress,
              autofocus: true,
              autofillHints: const [AutofillHints.email],
              focusNode: focusNodeTextFieldOne,
              inputFormatters: [TextProjectInputFormmater()._formmatter],
              textInputAction: TextInputAction.next,
              decoration: _InputDecarotor().emailInput,
            ),
            TextFormField(
              focusNode: focusNodeTextFieldTwo,
              minLines: 2,
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(GlobalKey key, int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}

class TextProjectInputFormmater {
  final _formmatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    }
    return newValue;
  });
}

class _InputDecarotor {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,
  );
}
