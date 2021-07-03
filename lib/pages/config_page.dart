import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/controllers/config/config.dart';
import 'package:ecolog/application_model/firebases/exception/export_exception.dart';
import 'package:ecolog/pages/pages.dart';
import 'package:ecolog/util/extension/extensions.dart';

class ConfigPage extends HookWidget {
  static const routeName = 'config';

  const ConfigPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(configControllerProvider.notifier);
    final state = useProvider(configControllerProvider);

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.hardEdge,
      children: [
        Scaffold(
          backgroundColor: const Color(0XFFEFEFF4),
          appBar: AppBar(
            title: const Text(ConstString.configPageAppBarTitle),
          ),
          body: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const SizedBox(height: 32,),
              const Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(ConstString.configPageAppSectionHeader),
              ),
              const SizedBox(height: 8,),
              const NoIconCell(title: ConstString.configPageTermsOfUse, isLast: true,),
              const SizedBox(height: 44,),
              SignOutCell(onPressed: () async {
                showCommonDialog(context,
                    ConstString.configPageSignOut,
                    () async { await didSignOutButtonPush(context, controller); },
                    description: ConstString.configSignOutDialogDescription,
                );
              }),
            ],
          ),
        ),
        FullScreenLoading(isHidden: !state.isLoading,),
        _showErrorDialogHandler(state.exception),
      ],
    );
  }

  /// ErrorDialog表示判定
  Widget _showErrorDialogHandler(Exception? exception) {
    if (exception is FirebaseAuthException) {
      final type = GetFirebaseAuthExceptionType.getFirebaseAuthExceptionType(exception);
      return ErrorDialog(dialogTitle: type.message, isShow: true,);
    } else {
      return ErrorDialog(isShow: exception != null,);
    }
  }
}

extension ConfigPageCoordinator on ConfigPage {
  Future<void> didSignOutButtonPush(BuildContext context,ConfigController controller) async {
    controller.signOut().then((_) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context){
          return SplashPage();
        }),
      );
    });
  }
}