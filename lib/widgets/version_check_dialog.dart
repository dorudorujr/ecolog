import 'package:flutter/material.dart';

import 'package:ecolog/application_model/models/models.dart';

class VersionCheckDialog extends StatelessWidget {
  const VersionCheckDialog({
    Key? key,
    required UpdateRequestType requestType,
  }) :
        _requestType = requestType,
        super(key: key);

  final UpdateRequestType _requestType;

  @override
  Widget build(BuildContext context) {
    // ビルド後にダイアログを表示させるための記法
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      if (_requestType != UpdateRequestType.not) {
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
                  if (_requestType == UpdateRequestType.cancelable)
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('キャンセル'),
                    ),
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
      }
    });
    return const Text('新しいバージョンがある場合はダイアログが表示されます。');
  }
}