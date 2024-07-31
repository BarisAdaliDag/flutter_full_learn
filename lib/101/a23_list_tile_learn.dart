import 'package:flutter/material.dart';
import '../core/random_image.dart';

//  5. video 31 dk
class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: const RandomImage(),
                //contentPadding: EdgeInsets.zero,// component ozellikleri ben belirleyeyim
                onTap: () {},
                subtitle: const Text('How do you use your card'),
                minVerticalPadding: 0,
                dense: true, // componenti olabildigince sikistirmayi sagliyor
                leading: Container(
                    height: 200,
                    width: 30,
                    alignment: Alignment.topCenter,
                    child: const Icon(Icons.money)),
                trailing:
                    const SizedBox(width: 20, child: Icon(Icons.chevron_right)),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
