import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:ecolog/util/const/string/const_string.dart';

extension ShowCommonDialog on StatelessWidget {
  void showCommonDialog(BuildContext context, String title, AsyncCallback callBack, {String description = ""}) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(title),
            content: Text(description),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(ConstString.commonCancel),
              ),
              TextButton(
                onPressed: () async {
                  await callBack();
                  Navigator.of(context).pop();
                },
                child: const Text(
                    ConstString.commonOK,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Color(0XFFE00314)
                    ),
                ),
              ),
            ],
          );
        },
      );
    });
  }
}