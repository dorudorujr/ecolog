import 'package:flutter/material.dart';

import 'package:ecolog/pages/pages.dart';

class Routes {
  static RouteFactory onGenerateRoute = (RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute<HomePage>(
            settings: const RouteSettings(name: HomePage.routeName),
            builder: (context) => HomePage()
        );
      case StartPage.routeName:
        return MaterialPageRoute<StartPage>(
            settings: const RouteSettings(name: StartPage.routeName),
            builder: (context) => StartPage()
        );
      case SplashPage.routeName:
        return MaterialPageRoute<SplashPage>(
            settings: const RouteSettings(name: SplashPage.routeName),
            builder: (context) => SplashPage()
        );
      case ConfigPage.routeName:
        return MaterialPageRoute<ConfigPage>(
            settings: const RouteSettings(name: ConfigPage.routeName),
            builder: (context) => const ConfigPage()
        );
      case CategorysPage.routeName:
        return MaterialPageRoute<CategorysPage>(
            settings: const RouteSettings(name: CategorysPage.routeName),
            builder: (context) => const CategorysPage()
        );
      case AddCategoryPage.routeName:
        return MaterialPageRoute<AddCategoryPage>(
            settings: const RouteSettings(name: AddCategoryPage.routeName),
            builder: (context) => const AddCategoryPage()
        );
      case AddCategoryDetailPage.routeName:
        final args = settings.arguments as AddCategoryDetailPageArguments;
        return MaterialPageRoute<AddCategoryDetailPage>(
            settings: const RouteSettings(name: AddCategoryDetailPage.routeName),
            builder: (context) => AddCategoryDetailPage(categoryType: args.categoryType,)
        );
      case ElectricityInputPage.routeName:
        final args = settings.arguments as ElectricityInputArguments;
        return MaterialPageRoute<ElectricityInputPage>(
            settings: const RouteSettings(name: ElectricityInputPage.routeName),
            builder: (context) => ElectricityInputPage(name: args.name, defaultValue: args.defaultValue, categoryType: args.categoryType,)
        );
      case EcologInputPage.routeName:
        final args = settings.arguments as EcologInputArguments;
        return MaterialPageRoute<EcologInputPage>(
            settings: const RouteSettings(name: EcologInputPage.routeName),
            builder: (context) => EcologInputPage(name: args.name, defaultValue: args.defaultValue, categoryType: args.categoryType,)
        );
      default:
        return null;
    }
  };
}