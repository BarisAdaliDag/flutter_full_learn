import 'package:full_learn_flutter/202/cache/a12_1b_shared_not_initalze.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 12. video 20 dk
//Cok local veride daha temiz kod icin bu yapi
enum SharedKeys { counter, users }
// Shared ne yazildigi bilmesi icin enum kullandi
//String tutmaktan daha temiz yapi

class SharedManager {
  SharedPreferences? preferences;

  SharedManager();

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPrefences() {
    if (preferences == null) throw SharedNotInitiazleException();
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPrefences(); // preferences null check yapiyor.
    await preferences?.setString(key.name, value);
  }

  Future<void> saveStringItems(SharedKeys key, List<String> value) async {
    _checkPrefences();
    await preferences?.setStringList(key.name, value);
  }

  List<String>? getStrings(SharedKeys key) {
    _checkPrefences();
    return preferences?.getStringList(key.name);
  }

  String? getString(SharedKeys key) {
    _checkPrefences();
    return preferences?.getString(key.name);
  }

  Future<bool> removeItem(SharedKeys key) async {
    _checkPrefences();
    return (await preferences?.remove(key.name)) ?? false;
  }
}
