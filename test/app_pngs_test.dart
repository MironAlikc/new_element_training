import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:new_element_training/resources/resources.dart';

void main() {
  test('app_pngs assets test', () {
    expect(File(AppPngs.backButton).existsSync(), isTrue);
    expect(File(AppPngs.imageUser).existsSync(), isTrue);
    expect(File(AppPngs.loginPhoto).existsSync(), isTrue);
    expect(File(AppPngs.logo).existsSync(), isTrue);
    expect(File(AppPngs.user).existsSync(), isTrue);
  });
}
