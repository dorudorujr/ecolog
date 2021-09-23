import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/controllers/history/history.dart';
import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/application_model/firebases/exception/export_exception.dart';
import 'package:ecolog/application_model/entities/entities.dart';
import 'package:ecolog/util/extension/extensions.dart';
import "package:collection/collection.dart";

class HistoryPage extends HookWidget {
  static const routeName = 'history_page';

  const HistoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = useProvider(historyControllerProvider.notifier);
    final state = useProvider(historyControllerProvider);
    final histories = _makeCells(state.histories);
    final scrollController = useScrollController();

    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.offset >= scrollController.position.maxScrollExtent &&
            !scrollController.position.outOfRange) {
          controller.getNextEcoLogs();
        }
      });
      return () => scrollController.removeListener(() {
        if (scrollController.offset >= scrollController.position.maxScrollExtent &&
            !scrollController.position.outOfRange) {
          controller.getNextEcoLogs();
        }
      });
    }, [scrollController]);

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
              controller: scrollController,
              itemCount: histories.length,
              itemBuilder: (BuildContext context, int index) {
                return histories[index];
              }
          ),
        ),
        _showErrorDialogHandler(state.exception),
      ],
    );
  }

  List<Widget> _makeCells(List<EcoLogEntity> histories) {
    final mapHistories = histories.groupListsBy((element) => element.date);
    List<Widget> result = [];
    mapHistories.forEach((key, list) {
      final subHeader = ListTile(
        title: Text(
          '${key.toInputDateText()}',
          style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Color(0XFF5A5D5D)
          ),
        ),
      );
      result.add(subHeader);
      list.forEach((element) {
        final cell = IconCell(
          title: element.name,
          categoryType: element.categoryType,
          onTap: () {},
        );
        result.add(cell);
      });
    });
    return result;
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