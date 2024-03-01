import 'dart:io';
import 'package:dio/dio.dart';
import '../model/user_model.dart';

enum _UsersEnum {
  userPosts('posts');

  final String value;
  const _UsersEnum(this.value);
  String get toPath => value;
}

abstract class IUserService {
  IUserService(this.dio);
  final Dio dio;

  Future<List<UserModel>?> fetchUser();
}

class UserService extends IUserService {
  UserService(super.dio);

  @override
  Future<List<UserModel>?> fetchUser() async {
    final response = await dio.get(_UsersEnum.userPosts.toPath);
    if (response.statusCode == HttpStatus.ok) {
      final jsonBody = response.data;
      if (jsonBody is List) {
        return jsonBody.map((e) => UserModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}
