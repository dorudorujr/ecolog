import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomePage extends HookWidget {
  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('HomePage'),
      ),
    );
  }
}
