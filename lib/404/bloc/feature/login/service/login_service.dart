import '../../../../../product/model_19_1/token_model.dart';
import '../model/login_model.dart';
import 'package:vexana/vexana.dart';

abstract class ILoginService {
  final INetworkManager
      networkManager; //Service kisminda  network manager instance dışarıdan alman lazım

  ILoginService(this.networkManager);
  Future<TokenModel?> login(LoginModel model);

  final String _loginPath = 'api/login';
}

class LoginService extends ILoginService {
  LoginService(super.networkManager);

  @override
  Future<TokenModel?> login(LoginModel model) async {
    final response = await networkManager.send<TokenModel, TokenModel>(
        _loginPath,
        data: model,
        parseModel: const TokenModel(),
        method: RequestType.POST);

    return response.data;
  }
}
