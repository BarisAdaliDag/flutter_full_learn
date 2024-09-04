import 'package:flutter_test/flutter_test.dart';
import 'package:full_learn_flutter/404/bloc/feature/login/model/login_model.dart';
import 'package:full_learn_flutter/404/bloc/feature/login/service/login_service.dart';
import 'package:full_learn_flutter/product/service/vexana_network_manager.dart';

void main() {
  late ILoginService loginService;
  setUp(() {
    loginService = LoginService(VexanaNetworkManager());
  });
  test('Login Test - eve.holt@reqres.in & cityslicka ', () async {
    final response = await loginService
        .login(const LoginModel('eve.holt@reqres.in', 'cityslicka'));
    expect(response?.token, isNotNull);
  });
}
