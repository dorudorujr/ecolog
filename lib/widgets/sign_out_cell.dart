import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/application_model/firebases/auth/anonymous/anonymous.dart';

class SignOutCell extends HookWidget {
  const SignOutCell({
    Key? key,
    required this.onPressed,
  }) : super();

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final provider = useProvider(anonymousAuthenticationProvider);

    return Container(
      height: 44,
      color: Colors.white,
      child: TextButton(
        child: const Text(
          ConstString.configPageSignOut,
          style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Color(0XFFE00314)
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}