import 'package:equatable/equatable.dart';

import '../../../../../product/model_19_1/token_model.dart';
import '../model/login_model.dart';

class LoginState extends Equatable {
  final bool isLoading;
  final LoginModel? model;
  final TokenModel? tokenModel;
  final bool isCompleted;

  const LoginState(
      {this.isLoading = false,
      this.model,
      this.tokenModel,
      this.isCompleted = false});

  @override
  List<Object?> get props => [isLoading, model];
// 58 dk
//Copywith  veri yeni hali varsa güncellenir degisiklik yoksa eski hal saklanır
//buton yazida eski veri kalma sebebi budur.
  LoginState copyWith({
    bool? isLoading,
    LoginModel? model,
    TokenModel? tokenModel,
    bool? isCompleted,
  }) {
    return LoginState(
      isLoading: isLoading ?? false,
      model: model ?? this.model,
      tokenModel: tokenModel ?? this.tokenModel,
      isCompleted: isCompleted ?? false,
    );
  }
}
