import 'package:dio/dio.dart';

mixin ProjectDioMixin {
  final Dio reqresDio = Dio(BaseOptions(baseUrl: 'https://reqres.in/api/'));
  final Dio barisDio = Dio(BaseOptions(
    baseUrl: 'https://friendsapi.clbbaris.com/api/can/',
    headers: {"api-key": "API_KEY"},
  ));
}
