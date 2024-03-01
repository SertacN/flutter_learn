import 'package:flutter_test/flutter_test.dart';
import '../core/service_manager.dart';
import '../feature/model/user_model.dart';
import '../feature/service/user_service.dart';

void main() {
  late final IUserService userService;
  List<UserModel>? model;
  setUp(() {
    userService = UserService(DioServiceManager.instance.service);
  });
  test('User Service Test', () async {
    model = await _fetch(userService);
    expect(model, isNotEmpty);
  });
}

Future<List<UserModel>?> _fetch(IUserService userService) async {
  return await userService.fetchUser();
}
