import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:ecolog/pages/pages.dart';
import 'package:ecolog/util/provider/provider_export.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return ErrorPage(
      error: details.exception.toString(),
      /// TODO: 報告する処理追加
      didTapButton: (){},
    );
  };

  runApp(
    ProviderScope(child: MyApp())
  );
}

class MyApp extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(color: Color(0XFF5A5D5D), fontSize: 15),
          ),
        ),
      ),
      navigatorKey: useProvider(navigatorKeyProvider),
      home: SplashPage(),
    );
  }
}
