import 'package:dio/dio.dart';

// 16 vıd
// sıngelton yapı olusturma prıvate constractor kullanılıyor.
class ProjectNetworkManager {
  ProjectNetworkManager._() {
    _dio = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));
  }
  late final Dio _dio;

  static ProjectNetworkManager instance =
      ProjectNetworkManager._(); // bu sekil lazy yapısı

  Dio get service => _dio;

  void addBaseHeaderToToken(String token) {
    // orn datayı aldın tum servıslerıne eklemek istiyorsun
    // logın olmus kullanıcı authorızatıon geçicek
    _dio.options = _dio.options.copyWith(headers: {"Authorization": token});
  }
}

// Duratıon gelmeyebılır gelırse bir tane instance üzerinden duration kullanmak istiyorum
//37 dk
class DurationManager {
  DurationManager._();
  static DurationManager? _manager;

  static DurationManager get manager {
    if (_manager != null) return _manager!;
    _manager = DurationManager._();
    return _manager!;
  }
}
