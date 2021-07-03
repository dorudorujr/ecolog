import 'package:flutter/material.dart';

import 'package:ecolog/pages/pages.dart';

class Routes {
  static RouteFactory onGenerateRoute = (RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute<HomePage>(
          builder: (context) => HomePage()
        );
      case StartPage.routeName:
        return MaterialPageRoute<StartPage>(
            builder: (context) => StartPage()
        );
      case SplashPage.routeName:
        return MaterialPageRoute<SplashPage>(
            builder: (context) => SplashPage()
        );
      case ConfigPage.routeName:
        return MaterialPageRoute<ConfigPage>(
            builder: (context) => const ConfigPage()
        );
      default:
        return null;
    }
  };
}