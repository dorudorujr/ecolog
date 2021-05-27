import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:ecolog/application_model/firebases/remote_config/remote_config.dart';
import 'package:ecolog/application_model/firebases/firestore/forced_update/forced_update.dart';
import 'package:ecolog/widgets/widgets.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('バージョンアップダイアログ')),
      body: SafeArea(
        child: Center(
          // FutureProviderなので、 `when` で loading, error, data のハンドリングができる
          child: useProvider(forcedUpdateProvider).when(
            loading: () => const CircularProgressIndicator(),
            error: (error, stack) => ErrorWidget(error),
            data: (requestType) => VersionCheckDialog(requestType: requestType),
          ),
        ),
      ),
    );
  }
}
