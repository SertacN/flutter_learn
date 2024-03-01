import 'package:flutter_learn/400/core/extension/string_extension.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() {});
  test('Color value converter', () {
    String redColor = '#414141';
    final response = redColor.colorValue();
    expect(response, equals(0xff414141));
  });
}
