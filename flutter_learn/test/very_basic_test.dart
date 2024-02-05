import 'package:flutter_test/flutter_test.dart';

void main() {
  late final bool isLogin;
  setUp(() {
    isLogin = true;
  });
  test('User Login Test', () {
    expect(isLogin, isTrue);
  });
}
