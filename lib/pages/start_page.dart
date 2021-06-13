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
                Spacer(),
                PrimaryButton(
                  width: 275,
                  height: 47,
                  text: ConstString.startPageStartButton,
                  onPressed: () async { await didStartPageSignInButtonPush(context,controller);},
                ),
                SizedBox(height: 16,),
                SecondaryButton(
                  width: 275,
                  height: 47,
                  text: ConstString.startPageSignInButton,
                  onPressed: () {},
                ),
                SizedBox(height: 16,),
                SizedBox(
                  width: 275,
                  child: Row(
                    children: [
                      TextButton(onPressed: () {}, child: const Text(ConstString.startPageUseTermsOfUseButton)),
                      Spacer(),
                      TextButton(onPressed: () {}, child: const Text(ConstString.startPagePrivacyPolicyButton))
                    ],
                  ),
                ),
                SizedBox(height: 25,)
              ],
            ),
        ),
        FullScreenLoading(isHidden: !state.isLoading,),
        showErrorDialogHandler(state.exception),
      ],
    );
  }

  //TODO: この辺の遷移周りの関数をどうにかしたい
  Future<void> didStartPageSignInButtonPush(BuildContext context,StartController controller) async {
    /// TODO: signout機能を実装したら削除する
    await FirebaseAuth.instance.signOut();

    controller.anonymousSignIn().then((_) {
      Navigator.push(
        context,
          MaterialPageRoute(builder: (context) => HomePage(),)
      );
    });
  }

  /// ErrorDialog表示判定
  Widget showErrorDialogHandler(Exception? e) {
    if (e != null) {
      if (e is FirebaseAuthException) {
        final type = GetFirebaseAuthExceptionType.getFirebaseAuthExceptionType(e);
        return ErrorDialog(dialogTitle: type.message,);
      } else {
        return ErrorDialog();
      }
    } else {
      return Center();
    }
  }
}