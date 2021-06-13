import 'package:flutter/material.dart';

import 'package:ecolog/util/const/string/const_string.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    Key? key,
    this.dialogTitle,
    required this.isShow,
  }) : super(key: key);

  final String? dialogTitle;
  final bool isShow;

  @override
  Widget build(BuildContext context) {
    // ビルド後にダイアログを表示させるための記法
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (isShow) {
        showDialog<void>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(dialogTitle ?? ConstString.commonErrorTitle),
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
      }
    });
    return const Center();
  }
}