import 'package:flutter/material.dart';

import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/widgets/widgets.dart';

class ErrorPage extends StatelessWidget {
  final dynamic? error;
  final VoidCallback? didTapButton;

  const ErrorPage({
    Key? key,
    required this.error,
    required this.didTapButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /// TODO: AppBarのWidgetクラス作成
      appBar: AppBar(
        title: Text(ConstString.errorPageTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(ConstString.errorPageDescription),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: PrimaryButton(
                    height: 47,
                    text: ConstString.errorPageButton,
                    onPressed: () {
                      final didTapButton = this.didTapButton;
                      if (didTapButton != null) {
                        didTapButton();
                      }
                    },
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Text(ConstString.errorPageErrorCode),
            Text('${error}'),
          ],
        ),
      ),
    );
  }
}