import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:ecolog/application_model/models/models.dart';
import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/controllers/splash/splash.dart';
import 'package:ecolog/pages/pages.dart';

class SplashPage extends HookWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(splashControllerProvider.notifier);
    final state = useProvider(splashControllerProvider);
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        controller.check();
      });
    }, const[]);
    return didCheck(state);
  }
}

extension SplashCoordinator on SplashPage {
  Widget didCheck(SplashState state) {
    if (state.exception != null) {
      return const ErrorDialog(isShow: true,);
    }

    switch(state.type) {
      case SplashStatusType.forcibly:
        return const VersionCheckDialog();
      case SplashStatusType.autoSignIn:
        return const TabBarPage();
      case SplashStatusType.notSignIn:
        return StartPage();
      case SplashStatusType.load:
        return Container(color: Colors.white,);
      default:
        return StartPage();
    }
  }
}