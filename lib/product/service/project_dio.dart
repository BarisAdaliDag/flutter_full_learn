import 'package:dio/dio.dart';

// 15
mixin ProjectDioMixin {
  final service = Dio(BaseOptions(baseUrl: 'https://reqres.in/api'));
}
