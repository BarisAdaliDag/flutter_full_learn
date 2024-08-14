import 'package:flutter_test/flutter_test.dart';
import 'package:full_learn_flutter/202/a13_3_generic.dart';

void main() {
  setUp(() {});
  test('User calculate ', () {
    final users = [
      const GenericUser('vb', '11', 10),
      const GenericUser('vb', '11', 10),
      const GenericUser('vb', '11', 20),
    ];
    final userManagement =
        UserManagement(const AdminUser('vadmin', '1', 15, 1));
    final result = userManagement.calculateMoney(users);

    final respnse = userManagement.showNames<String>(users);

    expect(result, 55); // bekenen deger sonuc flase cıkar
  });
}
