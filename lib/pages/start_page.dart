import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/generated/assets.gen.dart';
import 'package:ecolog/pages/pages.dart';
import 'package:ecolog/controllers/start/start.dart';
import 'package:ecolog/application_model/firebases/exception/export_exception.dart';



class StartPage extends HookWidget {
  static const routeName = '/start';

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceCenterHeight = deviceHeight / 2;
    final controller = useProvider(startControllerProvider.notifier);
    final state = useProvider(startControllerProvider);

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.hardEdge,
      children: [
        SafeArea(
            child: Column(
              children: [
                SizedBox(height: deviceCenterHeight - 250,),
                Assets.images.logo.svg(
                    width: 180,
                    height: 50
                ),
                const Spacer(),
                PrimaryButton(
                  width: 275,
                  height: 47,
                  text: ConstString.startPageStartButton,
                  onPressed: () async { await didStartPageSignInButtonPush(context,controller);},
                ),
                const SizedBox(height: 16,),
                SecondaryButton(
                  width: 275,
                  height: 47,
                  text: ConstString.startPageSignInButton,
                  onPressed: () {},
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  width: 275,
                  child: Row(
                    children: [
                      TextButton(onPressed: () {}, child: const Text(ConstString.startPageUseTermsOfUseButton)),
                      const Spacer(),
                      TextButton(onPressed: () {}, child: const Text(ConstString.startPagePrivacyPolicyButton))
                    ],
                  ),
                ),
                const SizedBox(height: 25,)
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

extension StartPageCoordinator on StartPage {
  Future<void> didStartPageSignInButtonPush(BuildContext context,StartController controller) async {
    /// TODO: signout機能を実装したら削除する
    await FirebaseAuth.instance.signOut();

    controller.anonymousSignIn().then((_) {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ConfigPage(),)  /// TODO: HomePageに修正する
      );
    });
  }
}