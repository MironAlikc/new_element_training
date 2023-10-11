import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:new_element_training/resources/resources.dart';

void main() {
  test('app_svgs assets test', () {
    expect(File(AppSvgs.back).existsSync(), isTrue);
    expect(File(AppSvgs.backArrow).existsSync(), isTrue);
    expect(File(AppSvgs.calendar).existsSync(), isTrue);
    expect(File(AppSvgs.camera).existsSync(), isTrue);
    expect(File(AppSvgs.contacts).existsSync(), isTrue);
    expect(File(AppSvgs.delete).existsSync(), isTrue);
    expect(File(AppSvgs.logo).existsSync(), isTrue);
    expect(File(AppSvgs.metronom).existsSync(), isTrue);
    expect(File(AppSvgs.photo).existsSync(), isTrue);
    expect(File(AppSvgs.settings).existsSync(), isTrue);
    expect(File(AppSvgs.settingsProgram).existsSync(), isTrue);
    expect(File(AppSvgs.timer).existsSync(), isTrue);
    expect(File(AppSvgs.user).existsSync(), isTrue);
  });
}
