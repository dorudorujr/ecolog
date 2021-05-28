import 'package:flutter/material.dart';

import 'package:ecolog/application_model/models/models.dart';

class VersionCheckDialog extends StatelessWidget {
  const VersionCheckDialog({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ビルド後にダイアログを表示させるための記法
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // 新しいアプリバージョンがある場合はダイアログを表示する
      showDialog<void>(
        context: context,
        // ダイアログの外をタップしても閉じられないようにする
        barrierDismissible: false,
        builder: (context) {
          return WillPopScope(
            // AndroidのBackボタンで閉じられないようにする
            onWillPop: () async => false,
            child: AlertDialog(
              title: const Text('最新の更新があります。\nアップデートをお願いします。'),
              actions: [
                TextButton(
                  onPressed: () {
                    // TODO: App Store or Google Play に飛ばす処理
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Jump to Store.')),
                    );
                    Navigator.of(context).pop();
                  },
                  child: const Text('アップデート'),
                ),
              ],
            ),
          );
        },
      );
    });
    return const Center();
  }
}