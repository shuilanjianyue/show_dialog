import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:show_dialog/show_dialog.dart';

void main() {
  const MethodChannel channel = MethodChannel('show_dialog');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {

  });
}
