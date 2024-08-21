import 'package:collection/collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:full_learn_flutter/303/a13_3_generic.dart';
import 'package:full_learn_flutter/product/widget/card/high_card.dart';

void main() {
  setUp(() {});
  test('List best of', () {
    List<GenericUser> users = [
      const GenericUser('vb1', '11', 5),
      const GenericUser('vb2', '11', 10),
      const GenericUser('vb3', '11', 20)
    ];

    List<HighCard> highCards = users.map((e) {
      return HighCard(items: e.name.split('').toList());
    }).toList();
// orn userslarn ıcerısınde  sadece vb yazanı almak ıstıyorum
    try {
      // BIRDEN fazla aynu degerden 'vb' gıbı oldugunda sınglewhere
      // patlıyor  bu yapıda try kullan

      final response = users.singleWhere(
        (element) => element.findUserName('x'),
        orElse: () {
          // bulamazsa bunu don olmazsa crash yiyebilir veri yoksa test sırasında
          return const GenericUser('name', 'id', 15);
        },
      );

      print(response.name);
    } catch (e) {
      print(e);
    }

    print('${users.where((element) => element.money > 500)}');

    users.addAll([const GenericUser('name', 'id', 5)]);
    users.lastWhere((element) => element.id == '5');

    users.take(5);
    users.remove(const GenericUser('vb1', '11', 5));
    users.removeAt(2);
    users.removeWhere((element) => element.id == 11);

    users.indexOf(const GenericUser('vb1', '11', 5));
    final result = users.indexWhere((element) => element.id == '11');
    if (result >= 0) {
      users[result] = const GenericUser('a', 'b', 15);
    }

    users.expand((element) => [const GenericUser('a', '1 ', 15)]);
    // users.map((e) => e.money).where((element) => element > 5);
  });
//Collectıon kullanım dıger yontem
  test('List best of with collection', () {
    List<GenericUser> users = [
      const GenericUser('vb1', '11', 5),
      const GenericUser('vb2', '11', 10),
      const GenericUser('vb3', '11', 20)
    ];

    final response = users.singleWhereOrNull(
      (element) => element.findUserName('x'),
    );

    users.lastWhereOrNull((element) => element.id == '5');

    users.lastOrNull;
    users.forEachIndexed((index, element) {});
    users.sample(3);
    print(users.first == const GenericUser('vb1', '11', 5));
    print(users.contains(const GenericUser('vb1', '11', 5)));

    users.any((element) => element.money > 5);

    print(response);
  });
}
