import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/controllers/splash/splash.dart';
import 'package:ecolog/pages/pages.dart';

class SplashPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          /// 強制アップデート有無
          child: splashCoordinator(useProvider(splashControllerProvider))
        ),
      ),
    );
  }

  /// splash画面の遷移処理
  Widget splashCoordinator(SplashStatusType type) {
    switch(type) {
      case SplashStatusType.forcibly:
        return VersionCheckDialog();
      default:
        return StartPage();
    }
  }
}