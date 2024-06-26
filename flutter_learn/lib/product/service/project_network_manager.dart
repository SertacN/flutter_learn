import 'package:dio/dio.dart';
import 'package:flutter_learn/product/service/project_dio.dart';

class ProjectNetworkManager with ProjectDioMixin {
  ProjectNetworkManager._() {
    _dio = Dio(BaseOptions(baseUrl: 'https://reqres.in/api/'));
  }
  late final Dio _dio;

  static ProjectNetworkManager instance = ProjectNetworkManager._();

  Dio get service => _dio;

  void addBaseHeaderToToken(String token) {
    _dio.options = _dio.options.copyWith(
      headers: {'auth': token, 'api-key': '111'},
    );
  }
}

class DurationManager {
  DurationManager._();
  static DurationManager? _manager;

  static DurationManager get manager {
    if (_manager != null) return _manager!;
    _manager = DurationManager._();
    return _manager!;
  }
}
