import 'package:dio/dio.dart';

mixin ProjectDioMixin {
  final Dio reqresDio = Dio(BaseOptions(baseUrl: 'https://reqres.in/api/'));
  final Dio barisDio = Dio(BaseOptions(
    baseUrl: 'https://friendsapi.clbbaris.com/api/can/',
    headers: {"api-key": "0d114762-360e-450e-99e6-36137409977d"},
  ));
}
