import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:ecolog/controllers/splash/splash.dart';
import 'package:ecolog/application_model/entities/update_info_entity/update_info_entity.dart';
import 'package:ecolog/application_model/firebases/firestore/forced_update/forced_update.dart';
import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/util/provider/package_info/package_info.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  test('requiredVersion true && enabledAt true', () async {
    final updateInfo = UpdateInfoEntity(
        requiredVersion: '2.0.0',
        enabledAt: DateTime.now().add(const Duration(days: 1)));

    final container = ProviderContainer(
      overrides: [
        forcedUpdateProvider.overrideWithValue(AsyncValue.data(updateInfo)),
        packageInfoProvider.overrideWithValue(AsyncValue.data('1.0.0')),
      ]
    );
    final target = container.read(splashControllerProvider.notifier);

    target.stream.listen((event) {
      expect(event, SplashStatusType.forcibly);
    });
  });
}