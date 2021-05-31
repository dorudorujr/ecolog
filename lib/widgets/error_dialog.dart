import 'package:flutter/material.dart';

import 'package:ecolog/util/const/string/const_string.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ビルド後にダイアログを表示させるための記法
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // 新しいアプリバージョンがある場合はダイアログを表示する
      showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(ConstString.commonErrorTitle),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(ConstString.commonOK),
              ),
            ],
          );
        },
      );
    });
    return const Center();
  }
}