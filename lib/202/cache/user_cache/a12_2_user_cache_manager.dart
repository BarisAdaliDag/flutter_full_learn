import 'dart:convert';

import '../a12_1c_shared_manager.dart';

import '../a12_2c_user_model.dart';
// 45 dk
// class shared kaydetme icin kullandigimiz yapi

// Google json decode online
// Json decide ettiginde obje dönüyor encode ettiginde string donuyor
class UserCacheManager {
  final SharedManager sharedManager;

  UserCacheManager(this.sharedManager);

  Future<void> saveItems(List<User> items) async {
    // Compute
    final items0 =
        items.map((element) => jsonEncode(element.toJson())).toList();
    await sharedManager.saveStringItems(SharedKeys.users, items0);
  }

  List<User>? getItems() {
    // Compute
    final itemsString = sharedManager.getStrings(SharedKeys.users);
    if (itemsString?.isNotEmpty ?? false) {
      return itemsString!.map((element) {
        final json = jsonDecode(element);
        if (json is Map<String, dynamic>) {
          return User.fromJson(json);
        }
        return User('', '', '');
      }).toList();
    }
    return null;
  }
}
