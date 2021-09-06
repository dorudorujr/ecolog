import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/controllers/history/history.dart';
import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/application_model/firebases/exception/export_exception.dart';
import 'package:ecolog/pages/pages.dart';
import 'package:ecolog/application_model/models/models.dart';

class HistoryPage extends HookWidget {
  static const routeName = 'history_page';

  const HistoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(historyControllerProvider.notifier);
    final state = useProvider(historyControllerProvider);

    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.hardEdge,
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(ConstString.historyTitle),
          ),
          body: ListView.builder(
              itemCount: state.histories.length,
              itemBuilder: (BuildContext context, int index) {
                if (state.histories[index] != null) {
                  return IconCell(
                    title: state.histories[index]!.name,
                    categoryType: state.histories[index]!.categoryType,
                    onTap: () {},
                  );
                } else {
                  return ListTile(
                    title: Text(
                      '${state.histories[index + 1]!.date}',
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 15,
                          color: Color(0XFF5A5D5D)
                      ),
                    ),
                  );
                }
              }
          ),
        ),
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