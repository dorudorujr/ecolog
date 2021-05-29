import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/widgets/widgets.dart';
import 'package:ecolog/generated/assets.gen.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceCenterHeight = deviceHeight / 2;

    return SafeArea(
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
              onPressed: () {},
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
    );
  }
}