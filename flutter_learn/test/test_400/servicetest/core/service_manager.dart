import 'package:dio/dio.dart';

class DioServiceManager {
  DioServiceManager._() {
    _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));
  }
  late final Dio _dio;

  static DioServiceManager instance = DioServiceManager._();

  Dio get service => _dio;
}
