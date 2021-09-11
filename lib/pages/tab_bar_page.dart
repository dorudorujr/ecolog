import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:ecolog/pages/pages.dart';
import 'package:ecolog/util/const/string/const_string.dart';

class TabBarPage extends HookWidget {
  static const routeName = 'tab_bar';

  const TabBarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationIndex = useState(0);
    return Scaffold(
      body: Center(
        child: [
          const ConfigPage(),
          const HistoryPage(),
          const Center(),
          const Center(),
        ].elementAt(navigationIndex.value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: ConstString.tabBarConfigTitle,
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: ConstString.tabBarHistoryTitle
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.create),
              label: ConstString.tabBarInputTitle
          ),
          const BottomNavigationBarItem(
              icon: Icon(Icons.data_usage),
              label: ConstString.tabBarOutputTitle
          ),
        ],
        currentIndex: navigationIndex.value,
        selectedItemColor: const Color.fromRGBO(77, 181, 171, 1.0),
        unselectedItemColor: const Color(0XFF5A5D5D),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          final inputIndex = 2;
          if (index != inputIndex) {
            navigationIndex.value = index;
          } else {
            Navigator.pushNamed(context, CategorysPage.routeName);
          }
        },
      ),
    );
  }
}