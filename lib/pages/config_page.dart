import 'package:flutter/material.dart';

import 'package:ecolog/util/const/string/const_string.dart';
import 'package:ecolog/widgets/widgets.dart';

class ConfigPage extends StatelessWidget {
  const ConfigPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEFEFF4),
      appBar: AppBar(
        title: Text(ConstString.configPageAppBarTitle),
      ),
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          SizedBox(height: 32,),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: Text(ConstString.configPageAppSectionHeader),
          ),
          SizedBox(height: 8,),
          NoIconCell(title: ConstString.configPageTermsOfUse,),
          SizedBox(height: 44,),
          SignOutCell(onPressed: (){}),
        ],
      ),
    );
  }
}