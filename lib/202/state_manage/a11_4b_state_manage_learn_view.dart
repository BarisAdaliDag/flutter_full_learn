import 'package:flutter/material.dart';
import 'a11_4_state_learn_view_model.dart';

class StateManageLearnView extends StatefulWidget {
  const StateManageLearnView({super.key});

  @override
  State<StateManageLearnView> createState() => _StateManageLearnViewState();
}

//1.adimda function StateLearnViewModel tasidi
//2.adimda extends State<StateManageLearnView> tasidi
//3. StateLearnViewModel  private property public yapti
//4. bu file extends StateLearnViewModel bu sayede fonksiyonlara erisim saglandi
// basarili sekilde business logic ayrildi.

class _StateManageLearnViewState extends StateLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
        },
      ),
      appBar: AppBar(
        backgroundColor: isOpacity ? Colors.red : Colors.green,
        shadowColor: isVisible ? Colors.amber : Colors.grey,
      ),
    );
  }
}
